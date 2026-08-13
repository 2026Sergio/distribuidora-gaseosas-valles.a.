USE distribuidora_bebidas;


-- Categorías
INSERT INTO categorias (id_categoria, nombre_categoria) VALUES
('CAT-01', 'Gaseosas Tradicionales'),
('CAT-02', 'Aguas Purificadas'),
('CAT-03', 'Jugos y Néctares'),
('CAT-04', 'Bebidas Energizantes'),
('CAT-05', 'Isotónicas y Deportivas');

-- Encargados
INSERT INTO encargados (id_encargado, nombre_encargado, telefono_encargado) VALUES
('ENC-01', 'Mateo Morales', '+502 5910 1122'),
('ENC-02', 'Sofia Méndez', '+502 4890 3344'),
('ENC-03', 'Alejandro Estrada', '+502 3120 5566'),
('ENC-04', 'María Fernanda López', '+502 5544 7788');


-- Almacenamientos
INSERT INTO almacenamientos (id_almacenamiento, capacidad_cajas) VALUES
('ALM-01', 25000),
('ALM-02', 40000),
('ALM-03', 18000),
('ALM-04', 30000);


-- Sedes (4 Sedes)
INSERT INTO sedes (id_sede, nombre_sede, ubicacion_sede, id_encargado, id_almacenamiento) VALUES
('SED-01', 'Sede Principal Girón', 'Zona Industrial Carrizal, Girón', 'ENC-01', 'ALM-01'),
('SED-02', 'Sede Bucaramanga Norte', 'Av. Quebradaseca #14-30, Bucaramanga', 'ENC-02', 'ALM-02'),
('SED-03', 'Sede Piedecuesta Sur', 'Cll 3 #8-45, Piedecuesta', 'ENC-03', 'ALM-03'),
('SED-04', 'Sede Bucaramanga Centro', 'Cra 21 #34-12, Bucaramanga', 'ENC-04', 'ALM-04');


-- Clientes (20 Clientes requeridos)
INSERT INTO clientes (id_cliente, nombre_cliente, nit_cliente, direccion_cliente, telefono_cliente, correo_cliente) VALUES
('CLI-501', 'Abarrotería El Carmen', '849201-K', 'Cra 15 #12-04, Girón', '+502 5412 8901', 'elcarmen@gmail.com'),
('CLI-502', 'Mi Tiendita La Bendición', '930124-3', 'Cll 36 #18-20, Bucaramanga', '+502 4109 2387', 'labendicion@hotmail.com'),
('CLI-503', 'Depósito y Licorería San José', '1029384-7', 'Cra 6 #4-12, Piedecuesta', '+502 3012 9944', 'sanjose_ventas@gmail.com'),
('CLI-504', 'Supertienda La Esperanza', '1122334-5', 'Cll 10 #5-30, Bucaramanga', '+502 5511 2233', 'esperanza@gmail.com'),
('CLI-505', 'Comercial El Rosario', '2233445-6', 'Cra 12 #8-15, Girón', '+502 4422 3344', 'elrosario@hotmail.com'),
('CLI-506', 'Tienda La Quince', '3344556-7', 'Cll 15 #15-15, Bucaramanga', '+502 3333 4455', 'laquince@gmail.com'),
('CLI-507', 'Abarrotes El Triunfo', '4455667-8', 'Cra 4 #10-20, Piedecuesta', '+502 5151 6262', 'eltriunfo@gmail.com'),
('CLI-508', 'Minisuper Los Ángeles', '5566778-9', 'Cll 45 #20-10, Bucaramanga', '+502 4242 5353', 'losangeles@yahoo.com'),
('CLI-509', 'Distribuidora La Economía', '6677889-0', 'Cra 8 #12-00, Girón', '+502 3131 4242', 'laeconomia@gmail.com'),
('CLI-510', 'Depósito El Sol', '7788990-1', 'Cll 8 #2-14, Piedecuesta', '+502 5959 1010', 'elsol@gmail.com'),
('CLI-511', 'Abarrotería San Francisco', '8899001-2', 'Cra 22 #41-05, Bucaramanga', '+502 4848 2929', 'sanfrancisco@gmail.com'),
('CLI-512', 'Tienda La Central', '9900112-3', 'Cll 12 #10-04, Girón', '+502 3737 4848', 'lacentral@hotmail.com'),
('CLI-513', 'Súper San Antonio', '1011121-4', 'Cra 5 #6-18, Piedecuesta', '+502 5656 7788', 'sanantonio@gmail.com'),
('CLI-514', 'Mercadito El Portal', '1213141-5', 'Cll 50 #15-30, Bucaramanga', '+502 4545 6677', 'elportal@gmail.com'),
('CLI-515', 'Variedades La Esquina', '1415161-6', 'Cra 10 #14-22, Girón', '+502 3434 5566', 'laesquina@hotmail.com'),
('CLI-516', 'Abarrotería El Bosque', '1617181-7', 'Cll 4 #3-09, Piedecuesta', '+502 5353 4455', 'elbosque@gmail.com'),
('CLI-517', 'Comercializadora Don Pedro', '1819202-8', 'Cra 17 #33-10, Bucaramanga', '+502 4242 3344', 'donpedro@gmail.com'),
('CLI-518', 'Tienda Santa Marta', '2021222-9', 'Cll 18 #9-01, Girón', '+502 3131 2233', 'santamarta@gmail.com'),
('CLI-519', 'Depósito Mi Colombia', '2223242-0', 'Cra 7 #11-50, Piedecuesta', '+502 5050 1122', 'micolombia@hotmail.com'),
('CLI-520', 'Supermercado El Valle', '2425262-1', 'Cll 28 #19-40, Bucaramanga', '+502 4949 0011', 'elvalle@gmail.com');


-- Productos (100 Productos requeridos)
INSERT INTO productos (id_producto, nombre_producto, id_categoria, volumen_ml) VALUES
('PROD-001', 'Gaseosa SalvaVida Cola 350ml', 'CAT-01', 350),
('PROD-002', 'Gaseosa SalvaVida Cola 400ml', 'CAT-01', 400),
('PROD-003', 'Gaseosa SalvaVida Cola 500ml', 'CAT-01', 500),
('PROD-004', 'Gaseosa SalvaVida Cola 600ml', 'CAT-01', 600),
('PROD-005', 'Gaseosa SalvaVida Cola 1000ml', 'CAT-01', 1000),
('PROD-006', 'Gaseosa SalvaVida Cola 1250ml', 'CAT-01', 1250),
('PROD-007', 'Gaseosa SalvaVida Cola 1500ml', 'CAT-01', 1500),
('PROD-008', 'Gaseosa SalvaVida Cola 2000ml', 'CAT-01', 2000),
('PROD-009', 'Gaseosa SalvaVida Cola 2500ml', 'CAT-01', 2500),
('PROD-010', 'Gaseosa SalvaVida Cola 3000ml', 'CAT-01', 3000),
('PROD-011', 'Gaseosa SalvaVida Uva 350ml', 'CAT-01', 350),
('PROD-012', 'Gaseosa SalvaVida Uva 400ml', 'CAT-01', 400),
('PROD-013', 'Gaseosa SalvaVida Uva 500ml', 'CAT-01', 500),
('PROD-014', 'Gaseosa SalvaVida Uva 600ml', 'CAT-01', 600),
('PROD-015', 'Gaseosa SalvaVida Uva 1000ml', 'CAT-01', 1000),
('PROD-016', 'Gaseosa SalvaVida Uva 1250ml', 'CAT-01', 1250),
('PROD-017', 'Gaseosa SalvaVida Uva 1500ml', 'CAT-01', 1500),
('PROD-018', 'Gaseosa SalvaVida Uva 2000ml', 'CAT-01', 2000),
('PROD-019', 'Gaseosa SalvaVida Uva 2500ml', 'CAT-01', 2500),
('PROD-020', 'Gaseosa SalvaVida Uva 3000ml', 'CAT-01', 3000),
('PROD-021', 'Gaseosa Tiky Piña 350ml', 'CAT-01', 350),
('PROD-022', 'Gaseosa Tiky Piña 400ml', 'CAT-01', 400),
('PROD-023', 'Gaseosa Tiky Piña 500ml', 'CAT-01', 500),
('PROD-024', 'Gaseosa Tiky Piña 600ml', 'CAT-01', 600),
('PROD-025', 'Gaseosa Tiky Piña 1000ml', 'CAT-01', 1000),
('PROD-026', 'Gaseosa Tiky Piña 1250ml', 'CAT-01', 1250),
('PROD-027', 'Gaseosa Tiky Piña 1500ml', 'CAT-01', 1500),
('PROD-028', 'Gaseosa Tiky Piña 2000ml', 'CAT-01', 2000),
('PROD-029', 'Gaseosa Tiky Piña 2500ml', 'CAT-01', 2500),
('PROD-030', 'Gaseosa Tiky Piña 3000ml', 'CAT-01', 3000),
('PROD-031', 'Gaseosa Grapette Uva 350ml', 'CAT-01', 350),
('PROD-032', 'Gaseosa Grapette Uva 400ml', 'CAT-01', 400),
('PROD-033', 'Gaseosa Grapette Uva 500ml', 'CAT-01', 500),
('PROD-034', 'Gaseosa Grapette Uva 600ml', 'CAT-01', 600),
('PROD-035', 'Gaseosa Grapette Uva 1000ml', 'CAT-01', 1000),
('PROD-036', 'Gaseosa Grapette Uva 1250ml', 'CAT-01', 1250),
('PROD-037', 'Gaseosa Grapette Uva 1500ml', 'CAT-01', 1500),
('PROD-038', 'Gaseosa Grapette Uva 2000ml', 'CAT-01', 2000),
('PROD-039', 'Gaseosa Grapette Uva 2500ml', 'CAT-01', 2500),
('PROD-040', 'Gaseosa Grapette Uva 3000ml', 'CAT-01', 3000),
('PROD-041', 'Agua Purificada Gutt 350ml', 'CAT-02', 350),
('PROD-042', 'Agua Purificada Gutt 400ml', 'CAT-02', 400),
('PROD-043', 'Agua Purificada Gutt 500ml', 'CAT-02', 500),
('PROD-044', 'Agua Purificada Gutt 600ml', 'CAT-02', 600),
('PROD-045', 'Agua Purificada Gutt 1000ml', 'CAT-02', 1000),
('PROD-046', 'Agua Purificada Gutt 1250ml', 'CAT-02', 1250),
('PROD-047', 'Agua Purificada Gutt 1500ml', 'CAT-02', 1500),
('PROD-048', 'Agua Purificada Gutt 2000ml', 'CAT-02', 2000),
('PROD-049', 'Agua Purificada Gutt 2500ml', 'CAT-02', 2500),
('PROD-050', 'Agua Purificada Gutt 3000ml', 'CAT-02', 3000),
('PROD-051', 'Néctar Kerns Manzana 350ml', 'CAT-03', 350),
('PROD-052', 'Néctar Kerns Manzana 400ml', 'CAT-03', 400),
('PROD-053', 'Néctar Kerns Manzana 500ml', 'CAT-03', 500),
('PROD-054', 'Néctar Kerns Manzana 600ml', 'CAT-03', 600),
('PROD-055', 'Néctar Kerns Manzana 1000ml', 'CAT-03', 1000),
('PROD-056', 'Néctar Kerns Durazno 350ml', 'CAT-03', 350),
('PROD-057', 'Néctar Kerns Durazno 400ml', 'CAT-03', 400),
('PROD-058', 'Néctar Kerns Durazno 500ml', 'CAT-03', 500),
('PROD-059', 'Néctar Kerns Durazno 600ml', 'CAT-03', 600),
('PROD-060', 'Néctar Kerns Durazno 1000ml', 'CAT-03', 1000),
('PROD-061', 'Néctar Kerns Pera 350ml', 'CAT-03', 350),
('PROD-062', 'Néctar Kerns Pera 400ml', 'CAT-03', 400),
('PROD-063', 'Néctar Kerns Pera 500ml', 'CAT-03', 500),
('PROD-064', 'Néctar Kerns Pera 600ml', 'CAT-03', 600),
('PROD-065', 'Néctar Kerns Pera 1000ml', 'CAT-03', 1000),
('PROD-066', 'Bebida Energizante Raptor 350ml', 'CAT-04', 350),
('PROD-067', 'Bebida Energizante Raptor 500ml', 'CAT-04', 500),
('PROD-068', 'Bebida Energizante Amp 350ml', 'CAT-04', 350),
('PROD-069', 'Bebida Energizante Amp 500ml', 'CAT-04', 500),
('PROD-070', 'Gatorade Frutas 500ml', 'CAT-05', 500),
('PROD-071', 'Gatorade Naranja 500ml', 'CAT-05', 500),
('PROD-072', 'Gatorade Uva 500ml', 'CAT-05', 500),
('PROD-073', 'Té Frío Lipton Limón 500ml', 'CAT-03', 500),
('PROD-074', 'Té Frío Lipton Durazno 500ml', 'CAT-03', 500),
('PROD-075', 'Gaseosa SalvaVida Limón 350ml', 'CAT-01', 350),
('PROD-076', 'Gaseosa SalvaVida Limón 500ml', 'CAT-01', 500),
('PROD-077', 'Gaseosa SalvaVida Limón 1500ml', 'CAT-01', 1500),
('PROD-078', 'Gaseosa SalvaVida Limón 2500ml', 'CAT-01', 2500),
('PROD-079', 'Gaseosa Tiky Fresón 350ml', 'CAT-01', 350),
('PROD-080', 'Gaseosa Tiky Fresón 500ml', 'CAT-01', 500),
('PROD-081', 'Gaseosa Tiky Fresón 1500ml', 'CAT-01', 1500),
('PROD-082', 'Gaseosa Tiky Fresón 2500ml', 'CAT-01', 2500),
('PROD-083', 'Agua Purificada Gutt Con Gas 500ml', 'CAT-02', 500),
('PROD-084', 'Agua Purificada Gutt Con Gas 1500ml', 'CAT-02', 1500),
('PROD-085', 'Néctar Kerns Mango 350ml', 'CAT-03', 350),
('PROD-086', 'Néctar Kerns Mango 500ml', 'CAT-03', 500),
('PROD-087', 'Néctar Kerns Mango 1000ml', 'CAT-03', 1000),
('PROD-088', 'Bebida Energizante Raptor 1000ml', 'CAT-04', 1000),
('PROD-089', 'Gatorade Lima Limón 500ml', 'CAT-05', 500),
('PROD-090', 'Gatorade Maracuyá 500ml', 'CAT-05', 500),
('PROD-091', 'Gaseosa SalvaVida Mandarina 350ml', 'CAT-01', 350),
('PROD-092', 'Gaseosa SalvaVida Mandarina 500ml', 'CAT-01', 500),
('PROD-093', 'Gaseosa SalvaVida Mandarina 1500ml', 'CAT-01', 1500),
('PROD-094', 'Gaseosa Tiky Toronja 350ml', 'CAT-01', 350),
('PROD-095', 'Gaseosa Tiky Toronja 500ml', 'CAT-01', 500),
('PROD-096', 'Gaseosa Tiky Toronja 1500ml', 'CAT-01', 1500),
('PROD-097', 'Agua Saborizada Gutt Limón 500ml', 'CAT-02', 500),
('PROD-098', 'Agua Saborizada Gutt Manzana 500ml', 'CAT-02', 500),
('PROD-099', 'Néctar Kerns Guayaba 350ml', 'CAT-03', 350),
('PROD-100', 'Néctar Kerns Guayaba 1000ml', 'CAT-03', 1000);


-- Inventario Inicial (Stock por Sede)
INSERT INTO inventario (id_producto, id_sede, stock_actual, stock_minimo) VALUES
('PROD-007', 'SED-01', 1200, 200),
('PROD-029', 'SED-01', 850, 150),
('PROD-044', 'SED-01', 2500, 400),
('PROD-007', 'SED-02', 3000, 500),
('PROD-032', 'SED-02', 1800, 300),
('PROD-029', 'SED-03', 400, 100),
('PROD-066', 'SED-04', 1500, 250);


-- Pedidos 
INSERT INTO pedidos (id_pedido, fecha_pedido, id_cliente, id_sede) VALUES
('PED-1001', '2026-08-01 08:30:00', 'CLI-501', 'SED-01'),
('PED-1002', '2026-08-01 10:15:00', 'CLI-502', 'SED-02'),
('PED-1003', '2026-08-02 14:00:00', 'CLI-503', 'SED-03'),
('PED-1004', '2026-08-03 09:45:00', 'CLI-501', 'SED-01');


-- Detalle de Pedidos
INSERT INTO detalle_pedido (id_pedido, id_producto, precio_unitario, cantidad_pedida) VALUES
('PED-1001', 'PROD-007', 4500.00, 10),
('PED-1001', 'PROD-029', 7000.00, 5),
('PED-1002', 'PROD-007', 4500.00, 20),
('PED-1002', 'PROD-032', 2200.00, 50),
('PED-1003', 'PROD-029', 7000.00, 15),
('PED-1004', 'PROD-007', 4500.00, 15),
('PED-1004', 'PROD-044', 2000.00, 30);


-- Vendedores 
INSERT INTO vendedores (id_vendedor, nombre_vendedor, id_sede, telefono_vendedor) VALUES
('VEN-01', 'Carlos Alvarado', 'SED-01', '+502 5100 9988'),
('VEN-02', 'Lucía Fuentes', 'SED-03', '+502 4233 1122');
