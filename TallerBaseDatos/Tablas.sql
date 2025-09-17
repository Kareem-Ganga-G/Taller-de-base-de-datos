-- =============================================
-- DDL OPTIMIZADO - CREACIÓN DE TABLAS
-- =============================================

-- ELIMINACIÓN DE TABLAS
DROP TABLE usuarios_eventos CASCADE CONSTRAINTS;
DROP TABLE resenas CASCADE CONSTRAINTS;
DROP TABLE detalle_pedido CASCADE CONSTRAINTS;
DROP TABLE pedidos CASCADE CONSTRAINTS;
DROP TABLE productos CASCADE CONSTRAINTS;
DROP TABLE eventos CASCADE CONSTRAINTS;
DROP TABLE usuarios CASCADE CONSTRAINTS;
DROP TABLE categorias CASCADE CONSTRAINTS;
DROP TABLE auditoria_cambios CASCADE CONSTRAINTS;

-- ELIMINACIÓN DE SECUENCIAS
DROP SEQUENCE seq_categorias;
DROP SEQUENCE seq_productos;
DROP SEQUENCE seq_usuarios;
DROP SEQUENCE seq_pedidos;
DROP SEQUENCE seq_eventos;
DROP SEQUENCE seq_resenas;
DROP SEQUENCE seq_detalle_pedido;
DROP SEQUENCE seq_auditoria;

-- 2. CREACIÓN DE TABLAS PRINCIPALES CON TIPOS NUMÉRICOS PARA IDs
CREATE TABLE categorias (
    id_categoria NUMBER(10) NOT NULL,
    nombre       VARCHAR2(100) NOT NULL,
    descripcion  VARCHAR2(150) NOT NULL,
    CONSTRAINT categorias_pk PRIMARY KEY (id_categoria)
);

CREATE TABLE productos (
    id_producto             NUMBER(10) NOT NULL,
    codigo                  VARCHAR2(100) NOT NULL,
    nombre                  VARCHAR2(100) NOT NULL,
    descripcion             VARCHAR2(100) NOT NULL,
    precio                  NUMBER(10, 2) NOT NULL,
    stock                   INTEGER NOT NULL,
    categorias_id_categoria NUMBER(10) NOT NULL,
    CONSTRAINT productos_pk PRIMARY KEY (id_producto),
    CONSTRAINT chk_precio_positivo CHECK (precio > 0),
    CONSTRAINT chk_stock_positivo CHECK (stock >= 0)
);

CREATE TABLE usuarios (
    id_usuario       NUMBER(10) NOT NULL,
    nombre           VARCHAR2(100) NOT NULL,
    email            VARCHAR2(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    telefono         VARCHAR2(20) NOT NULL,
    direccion        VARCHAR2(100) NOT NULL,
    fecha_registro   DATE NOT NULL,
    puntos_levelup   INTEGER NOT NULL,
    CONSTRAINT usuarios_pk PRIMARY KEY (id_usuario),
    CONSTRAINT chk_email_valido CHECK (email LIKE '%@%.%')
);

CREATE TABLE pedidos (
    id_pedido           NUMBER(10) NOT NULL,
    fecha_pedido        DATE NOT NULL,
    total               NUMBER(10, 2) NOT NULL,
    estado              VARCHAR2(100) NOT NULL,
    usuarios_id_usuario NUMBER(10) NOT NULL,
    CONSTRAINT pedidos_pk PRIMARY KEY (id_pedido),
    CONSTRAINT chk_estado_valido CHECK (estado IN ('Pendiente', 'Pagado', 'Enviado', 'Cancelado'))
);

CREATE TABLE detalle_pedido (
    id_detalle            NUMBER(10) NOT NULL,
    cantidad              INTEGER NOT NULL,
    precio_unit           NUMBER(10, 2) NOT NULL,
    pedidos_id_pedido     NUMBER(10) NOT NULL,
    productos_id_producto NUMBER(10) NOT NULL,
    CONSTRAINT detalle_pedido_pk PRIMARY KEY (id_detalle)
);

CREATE TABLE eventos (
    id_evento     NUMBER(10) NOT NULL,
    nombre        VARCHAR2(100) NOT NULL,
    ubicacion     VARCHAR2(150) NOT NULL,
    fecha_evento  DATE NOT NULL,
    puntos_otorga INTEGER NOT NULL,
    CONSTRAINT eventos_pk PRIMARY KEY (id_evento)
);

CREATE TABLE resenas (
    id_resena             NUMBER(10) NOT NULL,
    calificacion          INTEGER NOT NULL,
    comentarios           VARCHAR2(100) NOT NULL,
    fecha                 DATE NOT NULL,
    productos_id_producto NUMBER(10) NOT NULL,
    usuarios_id_usuario   NUMBER(10) NOT NULL, -- NUEVO: Usuario que hace la reseña
    CONSTRAINT resenas_pk PRIMARY KEY (id_resena),
    CONSTRAINT chk_calificacion CHECK (calificacion BETWEEN 1 AND 5)
);

CREATE TABLE usuarios_eventos (
    fecha_participacion DATE NOT NULL,
    puntos_otorgados    INTEGER NOT NULL,
    eventos_id_evento   NUMBER(10) NOT NULL,
    usuarios_id_usuario NUMBER(10) NOT NULL,
    CONSTRAINT usuarios_eventos_pk PRIMARY KEY (eventos_id_evento, usuarios_id_usuario)
);

-- 3. TABLA DE AUDITORÍA PARA TRIGGERS
CREATE TABLE auditoria_cambios (
    id_auditoria NUMBER(10) PRIMARY KEY,
    tabla_afectada VARCHAR2(50),
    accion VARCHAR2(10),
    id_registro VARCHAR2(100),
    usuario VARCHAR2(100),
    fecha_cambio DATE DEFAULT SYSDATE,
    datos_anteriores CLOB
);
CREATE TABLE antiguos_usuarios (
    id_usuario       NUMBER(10) NOT NULL,
    nombre           VARCHAR2(100) NOT NULL,
    email            VARCHAR2(100) NOT NULL,
    fecha_cmb date default sysdat
    );
-- 4. CONSTRAINTS DE LLAVES FORÁNEAS
ALTER TABLE productos ADD CONSTRAINT productos_categorias_fk 
    FOREIGN KEY (categorias_id_categoria) REFERENCES categorias (id_categoria);

ALTER TABLE pedidos ADD CONSTRAINT pedidos_usuarios_fk 
    FOREIGN KEY (usuarios_id_usuario) REFERENCES usuarios (id_usuario);

ALTER TABLE detalle_pedido ADD CONSTRAINT detalle_pedido_pedidos_fk 
    FOREIGN KEY (pedidos_id_pedido) REFERENCES pedidos (id_pedido);

ALTER TABLE detalle_pedido ADD CONSTRAINT detalle_pedido_productos_fk 
    FOREIGN KEY (productos_id_producto) REFERENCES productos (id_producto);

ALTER TABLE resenas ADD CONSTRAINT resenas_productos_fk 
    FOREIGN KEY (productos_id_producto) REFERENCES productos (id_producto);

ALTER TABLE resenas ADD CONSTRAINT resenas_usuarios_fk  -- NUEVA FK
    FOREIGN KEY (usuarios_id_usuario) REFERENCES usuarios (id_usuario);

ALTER TABLE usuarios_eventos ADD CONSTRAINT usuarios_eventos_eventos_fk 
    FOREIGN KEY (eventos_id_evento) REFERENCES eventos (id_evento);

ALTER TABLE usuarios_eventos ADD CONSTRAINT usuarios_eventos_usuarios_fk 
    FOREIGN KEY (usuarios_id_usuario) REFERENCES usuarios (id_usuario);

-- 5. ÍNDICES PARA MEJORAR RENDIMIENTO
CREATE INDEX idx_productos_categoria ON productos(categorias_id_categoria);
CREATE INDEX idx_pedidos_usuario ON pedidos(usuarios_id_usuario);
CREATE INDEX idx_detalle_pedido ON detalle_pedido(pedidos_id_pedido, productos_id_producto);
CREATE INDEX idx_resenas_producto ON resenas(productos_id_producto);
CREATE INDEX idx_resenas_usuario ON resenas(usuarios_id_usuario); -- NUEVO ÍNDICE
CREATE INDEX idx_usuarios_email ON usuarios(email);
CREATE INDEX idx_pedidos_fecha ON pedidos(fecha_pedido);
CREATE INDEX idx_eventos_fecha ON eventos(fecha_evento);

-- 6. SECUENCIAS PARA IDs AUTOMÁTICOS
CREATE SEQUENCE seq_categorias START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_productos START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_usuarios START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_pedidos START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_eventos START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_resenas START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_detalle_pedido START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_auditoria START WITH 1 INCREMENT BY 1;

-- =============================================
-- FIN DEL DDL - SOLO CREACIÓN DE TABLAS
-- =============================================