-- ==========================================
-- PACKAGE DE LÓGICA DE NEGOCIO
-- ==========================================
CREATE OR REPLACE PACKAGE pkg_logica AS
    -- 1. TIPOS COMPUESTOS
    TYPE rec_usuario IS RECORD (
        id_usuario   usuarios.id_usuario%TYPE,
        nombre       usuarios.nombre%TYPE,
        email        usuarios.email%TYPE,
        puntos       usuarios.puntos_levelup%TYPE
    );

    TYPE varray_tipos_producto IS VARRAY(3) OF VARCHAR2(50);

    -- 2. PROCEDIMIENTOS
    PROCEDURE proc_registrar_usuario(
        p_nombre VARCHAR2,
        p_email VARCHAR2,
        p_fecha_nac DATE,
        p_telefono VARCHAR2,
        p_direccion VARCHAR2
    );

    PROCEDURE proc_registrar_producto(
        p_codigo VARCHAR2,
        p_nombre VARCHAR2,
        p_descripcion VARCHAR2,
        p_precio NUMBER,
        p_stock NUMBER,
        p_id_categoria NUMBER
    );

    PROCEDURE proc_listar_usuarios;

    PROCEDURE proc_listar_productos;

    PROCEDURE proc_listar_pedidos_usuario(p_id_usuario NUMBER);

    -- 3. FUNCIÓN
    FUNCTION fun_total_pedido(p_id_pedido NUMBER) RETURN NUMBER;
END pkg_logica;
/

/*
    Cuerpo Package y Validaciones
*/
CREATE OR REPLACE PACKAGE BODY pkg_logica AS

    PROCEDURE proc_registrar_usuario(
        p_nombre VARCHAR2,
        p_email VARCHAR2,
        p_fecha_nac DATE,
        p_telefono VARCHAR2,
        p_direccion VARCHAR2
    ) IS
    BEGIN
        INSERT INTO usuarios
        VALUES (seq_usuarios.NEXTVAL, p_nombre, p_email, p_fecha_nac,
                p_telefono, p_direccion, SYSDATE, 0);
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Error: El correo ya existe.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error inesperado en proc_registrar_usuario: ' || SQLERRM);
    END proc_registrar_usuario;

    PROCEDURE proc_registrar_producto(
        p_codigo VARCHAR2,
        p_nombre VARCHAR2,
        p_descripcion VARCHAR2,
        p_precio NUMBER,
        p_stock NUMBER,
        p_id_categoria NUMBER
    ) IS
        tipos_validos varray_tipos_producto := varray_tipos_producto('Hardware','Accesorio','Software');
        valido BOOLEAN := FALSE;
    BEGIN
        -- Validación de precio y stock
        IF p_precio <= 0 OR p_stock < 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Precio o stock inválido.');
        END IF;

        -- Validación de categoría usando loop
        FOR i IN 1..tipos_validos.COUNT LOOP
            IF UPPER(p_nombre) LIKE '%'||UPPER(tipos_validos(i))||'%' THEN
                valido := TRUE;
            END IF;
        END LOOP;

        IF NOT valido THEN
            DBMS_OUTPUT.PUT_LINE('Advertencia: producto no pertenece a categorías típicas.');
        END IF;

        INSERT INTO productos
        VALUES (seq_productos.NEXTVAL, p_codigo, p_nombre, p_descripcion, p_precio, p_stock, p_id_categoria);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error inesperado en proc_registrar_producto: ' || SQLERRM);
    END proc_registrar_producto;

    PROCEDURE proc_listar_usuarios IS
    BEGIN
        FOR u IN (SELECT * FROM usuarios) LOOP
            DBMS_OUTPUT.PUT_LINE('Usuario: ' || u.nombre || ' | Email: ' || u.email || ' | Puntos: ' || u.puntos_levelup);
        END LOOP;
    END proc_listar_usuarios;

    PROCEDURE proc_listar_productos IS
    BEGIN
        FOR p IN (SELECT * FROM productos) LOOP
            DBMS_OUTPUT.PUT_LINE('Producto: ' || p.nombre || ' | Precio: ' || p.precio || ' | Stock: ' || p.stock);
        END LOOP;
    END proc_listar_productos;

    PROCEDURE proc_listar_pedidos_usuario(p_id_usuario NUMBER) IS
    BEGIN
        FOR ped IN (SELECT id_pedido, fecha_pedido, total, estado 
                    FROM pedidos 
                    WHERE usuarios_id_usuario = p_id_usuario) LOOP
            DBMS_OUTPUT.PUT_LINE('Pedido ' || ped.id_pedido || ' | Fecha: ' || ped.fecha_pedido || ' | Total: ' || ped.total);
            
            -- Loop anidado para detalles
            FOR det IN (SELECT productos_id_producto, cantidad, precio_unit
                        FROM detalle_pedido
                        WHERE pedidos_id_pedido = ped.id_pedido) LOOP
                DBMS_OUTPUT.PUT_LINE('   -> Producto: ' || det.productos_id_producto ||
                                     ' Cantidad: ' || det.cantidad ||
                                     ' Precio: ' || det.precio_unit);
            END LOOP;
        END LOOP;
    END proc_listar_pedidos_usuario;

    FUNCTION fun_total_pedido(p_id_pedido NUMBER) RETURN NUMBER IS
        v_total NUMBER;
    BEGIN
        SELECT SUM(cantidad * precio_unit)
        INTO v_total
        FROM detalle_pedido
        WHERE pedidos_id_pedido = p_id_pedido;

        RETURN NVL(v_total,0);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 0;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error en fun_total_pedido: ' || SQLERRM);
            RETURN -1;
    END fun_total_pedido;

END pkg_logica;
/
/*
    Trigger
*/
-- Auditoría en tabla pedidos
CREATE OR REPLACE TRIGGER trg_auditoria_pedidos
AFTER INSERT OR UPDATE OR DELETE ON pedidos
FOR EACH ROW
DECLARE
    v_operacion VARCHAR2(10);
    v_id_pedido NUMBER;
    v_total_anterior VARCHAR2(100);
BEGIN
    -- Determinar operación
    IF INSERTING THEN
        v_operacion := 'INSERT';
        v_id_pedido := :NEW.id_pedido;
        v_total_anterior := NULL; -- no hay total anterior
    ELSIF UPDATING THEN
        v_operacion := 'UPDATE';
        v_id_pedido := :NEW.id_pedido;
        v_total_anterior := 'Total anterior: ' || :OLD.total;
    ELSIF DELETING THEN
        v_operacion := 'DELETE';
        v_id_pedido := :OLD.id_pedido;
        v_total_anterior := 'Total anterior: ' || :OLD.total;
    END IF;

    -- Insertar auditoría
    INSERT INTO auditoria_cambios
    VALUES (
        seq_auditoria.NEXTVAL,
        'PEDIDOS',
        v_operacion,
        v_id_pedido,
        USER,
        SYSDATE,
        v_total_anterior
    );
END;
/

-- Backup de usuarios al eliminar
CREATE OR REPLACE TRIGGER trg_backup_usuarios
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO antiguos_usuarios
    VALUES (:OLD.id_usuario, :OLD.nombre, :OLD.email, SYSDATE);
END;
/


