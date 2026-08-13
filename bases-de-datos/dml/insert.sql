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
