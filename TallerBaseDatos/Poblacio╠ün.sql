-- =============================================
-- DATOS DE POBLACIÓN PARA TABLAS OPTIMIZADAS
-- =============================================

-- 1. CATEGORÍAS
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Juegos de Mesa', 'Juegos de mesa para todas las edades');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Accesorios', 'Accesorios gamer y periféricos');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Consolas', 'Consolas de última generación');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Computadores Gamers', 'PCs gamer de alto rendimiento');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Sillas Gamers', 'Sillas ergonómicas para gaming');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Mouse', 'Mouse de precisión para gamers');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Mousepad', 'Mousepads de calidad con iluminación');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Poleras Personalizadas', 'Poleras gamer personalizadas');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Polerones Gamers Personalizados', 'Polerones gamer personalizados');
INSERT INTO categorias VALUES (seq_categorias.NEXTVAL, 'Servicio Técnico', 'Soporte y reparación de equipos');

-- 2. PRODUCTOS
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'JM001', 'Catan', 'Juego de estrategia en la isla de Catan', 29990, 100, 1);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'JM002', 'Carcassonne', 'Juego de colocación de fichas', 24990, 100, 1);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'AC001', 'Controlador Inalámbrico Xbox Series X', 'Mando inalámbrico oficial Xbox', 59990, 80, 2);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'AC002', 'Auriculares Gamer HyperX Cloud II', 'Sonido envolvente con micrófono desmontable', 79990, 60, 2);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'CO001', 'PlayStation 5', 'Consola de nueva generación Sony', 549990, 20, 3);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'CG001', 'PC Gamer ASUS ROG Strix', 'PC de alto rendimiento para gamers', 1299990, 15, 4);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'SG001', 'Silla Gamer Secretlab Titan', 'Silla ergonómica y ajustable', 349990, 25, 5);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'MS001', 'Mouse Gamer Logitech G502 HERO', 'Mouse de alta precisión y botones personalizables', 49990, 50, 6);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'MP001', 'Mousepad Razer Goliathus Extended Chroma', 'Mousepad con iluminación RGB', 29990, 70, 7);
INSERT INTO productos VALUES (seq_productos.NEXTVAL, 'PP001', 'Polera Gamer Personalizada Level-Up', 'Camiseta personalizable', 14990, 100, 8);

-- 3. USUARIOS (50 registros)
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Mateo Rojas', 'mateo.rojas1@mail.com', DATE '1995-01-10', '+56984561201', 'Direccion 1', SYSDATE, 120);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Sofía Morales', 'sofia.morales2@mail.com', DATE '1996-02-15', '+56984561202', 'Direccion 2', SYSDATE, 180);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Lucas Fernández', 'lucas.fernandez3@mail.com', DATE '1994-03-22', '+56984561203', 'Direccion 3', SYSDATE, 90);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Isabella Castillo', 'isabella.castillo4@mail.com', DATE '1998-04-18', '+56984561204', 'Direccion 4', SYSDATE, 200);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Benjamín Herrera', 'benjamin.herrera5@mail.com', DATE '1997-05-30', '+56984561205', 'Direccion 5', SYSDATE, 150);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Florencia Díaz', 'florencia.diaz6@mail.com', DATE '1993-06-12', '+56984561206', 'Direccion 6', SYSDATE, 300);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Martín Vargas', 'martin.vargas7@mail.com', DATE '1999-07-19', '+56984561207', 'Direccion 7', SYSDATE, 250);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Josefa Navarro', 'josefa.navarro8@mail.com', DATE '1992-08-23', '+56984561208', 'Direccion 8', SYSDATE, 100);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Agustín Fuentes', 'agustin.fuentes9@mail.com', DATE '1995-09-05', '+56984561209', 'Direccion 9', SYSDATE, 80);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Antonia Muñoz', 'antonia.munoz10@mail.com', DATE '1996-10-11', '+56984561210', 'Direccion 10', SYSDATE, 175);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Diego Sepúlveda', 'diego.sepulveda11@mail.com', DATE '1994-11-09', '+56984561211', 'Direccion 11', SYSDATE, 210);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Valentina Pizarro', 'valentina.pizarro12@mail.com', DATE '1995-12-21', '+56984561212', 'Direccion 12', SYSDATE, 190);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Tomás Araya', 'tomas.araya13@mail.com', DATE '1993-01-17', '+56984561213', 'Direccion 13', SYSDATE, 140);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Camila Peña', 'camila.pena14@mail.com', DATE '1998-02-26', '+56984561214', 'Direccion 14', SYSDATE, 220);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Joaquín Molina', 'joaquin.molina15@mail.com', DATE '1997-03-15', '+56984561215', 'Direccion 15', SYSDATE, 130);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Catalina Riquelme', 'catalina.riquelme16@mail.com', DATE '1994-04-28', '+56984561216', 'Direccion 16', SYSDATE, 260);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Vicente Campos', 'vicente.campos17@mail.com', DATE '1999-05-03', '+56984561217', 'Direccion 17', SYSDATE, 170);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Trinidad Saavedra', 'trinidad.saavedra18@mail.com', DATE '1992-06-07', '+56984561218', 'Direccion 18', SYSDATE, 145);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Matías Contreras', 'matias.contreras19@mail.com', DATE '1996-07-25', '+56984561219', 'Direccion 19', SYSDATE, 190);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Emily Castro', 'emily.castro20@mail.com', DATE '1995-08-14', '+56984561220', 'Direccion 20', SYSDATE, 160);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Felipe Vega', 'felipe.vega21@mail.com', DATE '1994-09-02', '+56984561221', 'Direccion 21', SYSDATE, 140);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Daniela Ortega', 'daniela.ortega22@mail.com', DATE '1997-10-19', '+56984561222', 'Direccion 22', SYSDATE, 175);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Ignacio Salinas', 'ignacio.salinas23@mail.com', DATE '1993-11-30', '+56984561223', 'Direccion 23', SYSDATE, 155);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Fernanda Godoy', 'fernanda.godoy24@mail.com', DATE '1998-12-12', '+56984561224', 'Direccion 24', SYSDATE, 180);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Gabriel Palma', 'gabriel.palma25@mail.com', DATE '1996-01-27', '+56984561225', 'Direccion 25', SYSDATE, 200);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Paula Méndez', 'paula.mendez26@mail.com', DATE '1995-02-05', '+56984561226', 'Direccion 26', SYSDATE, 165);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Cristóbal Bustos', 'cristobal.bustos27@mail.com', DATE '1994-03-13', '+56984561227', 'Direccion 27', SYSDATE, 130);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Jose Ignacio Lara', 'jose.lara28@mail.com', DATE '1997-04-07', '+56984561228', 'Direccion 28', SYSDATE, 185);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Francisca Yáñez', 'francisca.yanez29@mail.com', DATE '1993-05-29', '+56984561229', 'Direccion 29', SYSDATE, 150);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Renato Carrasco', 'renato.carrasco30@mail.com', DATE '1999-06-16', '+56984561230', 'Direccion 30', SYSDATE, 175);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'María José León', 'maria.leon31@mail.com', DATE '1992-07-04', '+56984561231', 'Direccion 31', SYSDATE, 140);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Andrés Figueroa', 'andres.figueroa32@mail.com', DATE '1996-08-22', '+56984561232', 'Direccion 32', SYSDATE, 190);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Paz Acuña', 'paz.acuna33@mail.com', DATE '1995-09-10', '+56984561233', 'Direccion 33', SYSDATE, 170);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Claudio Valdés', 'claudio.valdes34@mail.com', DATE '1994-10-18', '+56984561234', 'Direccion 34', SYSDATE, 155);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Camilo Paredes', 'camilo.paredes35@mail.com', DATE '1997-11-26', '+56984561235', 'Direccion 35', SYSDATE, 165);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Amanda Espinoza', 'amanda.espinoza36@mail.com', DATE '1993-12-14', '+56984561236', 'Direccion 36', SYSDATE, 145);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Rodrigo Gutiérrez', 'rodrigo.gutierrez37@mail.com', DATE '1998-01-08', '+56984561237', 'Direccion 37', SYSDATE, 180);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Josefina Cabrera', 'josefina.cabrera38@mail.com', DATE '1996-02-20', '+56984561238', 'Direccion 38', SYSDATE, 150);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Sebastián Molina', 'sebastian.molina39@mail.com', DATE '1995-03-05', '+56984561239', 'Direccion 39', SYSDATE, 200);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Valeria Rojas', 'valeria.rojas40@mail.com', DATE '1994-04-25', '+56984561240', 'Direccion 40', SYSDATE, 160);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Alejandro Cornejo', 'alejandro.cornejo41@mail.com', DATE '1997-05-18', '+56984561241', 'Direccion 41', SYSDATE, 185);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Constanza Morales', 'constanza.morales42@mail.com', DATE '1993-06-06', '+56984561242', 'Direccion 42', SYSDATE, 170);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Mauricio Tapia', 'mauricio.tapia43@mail.com', DATE '1999-07-12', '+56984561243', 'Direccion 43', SYSDATE, 150);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Pamela Soto', 'pamela.soto44@mail.com', DATE '1992-08-02', '+56984561244', 'Direccion 44', SYSDATE, 190);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Cristina Olivares', 'cristina.olivares45@mail.com', DATE '1996-09-21', '+56984561245', 'Direccion 45', SYSDATE, 175);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Héctor Farias', 'hector.farias46@mail.com', DATE '1995-10-09', '+56984561246', 'Direccion 46', SYSDATE, 160);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Mariana Rivera', 'mariana.rivera47@mail.com', DATE '1994-11-03', '+56984561247', 'Direccion 47', SYSDATE, 155);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Felipe Andrade', 'felipe.andrade48@mail.com', DATE '1997-12-30', '+56984561248', 'Direccion 48', SYSDATE, 165);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Nicole Aguilera', 'nicole.aguilera49@mail.com', DATE '1993-01-19', '+56984561249', 'Direccion 49', SYSDATE, 140);
INSERT INTO usuarios VALUES (seq_usuarios.NEXTVAL, 'Álvaro Espinosa', 'alvaro.espinosa50@mail.com', DATE '1998-02-11', '+56984561250', 'Direccion 50', SYSDATE, 200);

-- 4. EVENTOS
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Torneo Valorant', 'Arena Gamer Santiago', DATE '2025-10-10', 50);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Lanzamiento PS5', 'Mall Central', DATE '2025-10-15', 40);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Expo Gamer Chile', 'Centro Cultural', DATE '2025-11-05', 60);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Competencia FIFA', 'Estadio Virtual', DATE '2025-11-12', 30);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Noche Retro Arcade', 'Bar Arcade', DATE '2025-11-20', 20);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Torneo League of Legends', 'Arena Gamer Valpo', DATE '2025-11-25', 55);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Campeonato Mario Kart', 'Centro Eventos Sur', DATE '2025-12-01', 35);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Meet', 'GameCenter Concepción', DATE '2025-12-05', 25);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Feria Indie', 'Espacio Gamer', DATE '2025-12-10', 40);
INSERT INTO eventos VALUES (seq_eventos.NEXTVAL, 'Competencia Fortnite', 'Arena Gamer Norte', DATE '2025-12-15', 45);

-- 5. PEDIDOS
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-20, 179980, 'Pagado', 1);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-18, 549990, 'Enviado', 2);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-17, 349990, 'Pagado', 3);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-15, 29990, 'Pendiente', 4);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-15, 79990, 'Enviado', 5);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-14, 1299990, 'Pagado', 6);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-13, 49990, 'Pagado', 7);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-12, 14990, 'Pendiente', 8);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-11, 59990, 'Enviado', 9);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-10, 29990, 'Pagado', 10);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-9, 259980, 'Pagado', 11);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-8, 349990, 'Enviado', 12);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-7, 49990, 'Pagado', 13);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-6, 549990, 'Pendiente', 14);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-5, 179980, 'Pagado', 15);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-4, 29990, 'Pagado', 16);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-3, 79990, 'Enviado', 17);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-2, 1299990, 'Pagado', 18);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-1, 14990, 'Pagado', 19);
INSERT INTO pedidos VALUES (seq_pedidos.NEXTVAL, SYSDATE-1, 59990, 'Enviado', 20);

-- 6. DETALLE_PEDIDO
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 1, 1);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 14990, 1, 10);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 549990, 2, 5);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 349990, 3, 7);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 4, 9);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 79990, 5, 4);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 1299990, 6, 6);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 2, 49990, 7, 8);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 14990, 8, 10);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 59990, 9, 3);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 10, 2);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 11, 1);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 229990, 11, 7);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 349990, 12, 7);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 49990, 13, 8);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 549990, 14, 5);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 15, 1);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 14990, 15, 10);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 16, 9);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 79990, 17, 4);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 1299990, 18, 6);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 14990, 19, 10);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 59990, 20, 3);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 49990, 7, 8);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 12, 2);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 15, 9);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 79990, 5, 4);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 349990, 12, 7);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 29990, 10, 9);
INSERT INTO detalle_pedido VALUES (seq_detalle_pedido.NEXTVAL, 1, 14990, 19, 10);

-- 7. RESEÑAS (con usuario que las hace)
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 5, 'Excelente calidad', SYSDATE-5, 1, 1);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 4, 'Muy divertido', SYSDATE-4, 2, 2);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 5, 'Audio espectacular', SYSDATE-3, 4, 3);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 4, 'Ergonómica y cómoda', SYSDATE-3, 7, 4);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 5, 'Rendimiento brutal', SYSDATE-2, 6, 5);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 4, 'Buen agarre', SYSDATE-2, 8, 6);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 3, 'Funciona bien', SYSDATE-1, 9, 7);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 5, 'Hermosa consola', SYSDATE-1, 5, 8);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 4, 'Estilo increíble', SYSDATE-1, 10, 9);
INSERT INTO resenas VALUES (seq_resenas.NEXTVAL, 5, 'Gran experiencia', SYSDATE-1, 3, 10);

-- 8. USUARIOS_EVENTOS
INSERT INTO usuarios_eventos VALUES (SYSDATE-10, 50, 1, 1);
INSERT INTO usuarios_eventos VALUES (SYSDATE-10, 40, 2, 2);
INSERT INTO usuarios_eventos VALUES (SYSDATE-9, 60, 3, 3);
INSERT INTO usuarios_eventos VALUES (SYSDATE-9, 30, 4, 4);
INSERT INTO usuarios_eventos VALUES (SYSDATE-8, 20, 5, 5);
INSERT INTO usuarios_eventos VALUES (SYSDATE-8, 55, 6, 6);
INSERT INTO usuarios_eventos VALUES (SYSDATE-7, 35, 7, 7);
INSERT INTO usuarios_eventos VALUES (SYSDATE-7, 25, 8, 8);
INSERT INTO usuarios_eventos VALUES (SYSDATE-6, 40, 9, 9);
INSERT INTO usuarios_eventos VALUES (SYSDATE-6, 45, 10, 10);
INSERT INTO usuarios_eventos VALUES (SYSDATE-5, 30, 1, 11);
INSERT INTO usuarios_eventos VALUES (SYSDATE-5, 50, 2, 12);
INSERT INTO usuarios_eventos VALUES (SYSDATE-4, 60, 3, 13);
INSERT INTO usuarios_eventos VALUES (SYSDATE-4, 20, 4, 14);
INSERT INTO usuarios_eventos VALUES (SYSDATE-3, 25, 5, 15);
INSERT INTO usuarios_eventos VALUES (SYSDATE-3, 55, 6, 16);
INSERT INTO usuarios_eventos VALUES (SYSDATE-2, 35, 7, 17);
INSERT INTO usuarios_eventos VALUES (SYSDATE-2, 45, 8, 18);
INSERT INTO usuarios_eventos VALUES (SYSDATE-1, 40, 9, 19);
INSERT INTO usuarios_eventos VALUES (SYSDATE-1, 50, 10, 20);

COMMIT;

-- =============================================
-- FIN DE DATOS DE POBLACIÓN
-- =============================================