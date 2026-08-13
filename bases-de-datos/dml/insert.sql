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
