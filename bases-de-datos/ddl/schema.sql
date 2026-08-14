DROP DATABASE IF EXISTS distribuidora_bebidas;
CREATE DATABASE distribuidora_bebidas CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE distribuidora_bebidas;

-- ----------------------------------------------------------------------------
-- 1. CREACIÓN DE TABLAS CATEGORIAS
-- ----------------------------------------------------------------------------

CREATE TABLE categorias (
    id_categoria VARCHAR(10) NOT NULL,
    nombre_categoria VARCHAR(50) NOT NULL,
    CONSTRAINT pk_categorias PRIMARY KEY (id_categoria)
) ENGINE=InnoDB;;

-- ----------------------------------------------------------------------------
-- 2. CREACIÓN DE TABLAS PRODUCTOS
-- ----------------------------------------------------------------------------

CREATE TABLE productos (
    id_producto VARCHAR(10) NOT NULL,
    nombre_producto VARCHAR(100) NOT NULL,
    id_categoria VARCHAR(10) NOT NULL,
    volumen_ml INT NOT NULL,
    CONSTRAINT pk_productos PRIMARY KEY (id_producto),
    CONSTRAINT fk_productos_categorias FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
) ENGINE=InnoDB;;


--  Agregar la columna precio a la tabla productos con un valor por defecto
ALTER TABLE productos 
ADD COLUMN precio DECIMAL(10,2) NOT NULL DEFAULT 10.00;


-- nueva tabla. Crear la tabla de auditoría
CREATE TABLE IF NOT EXISTS auditoria_precios (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    id_producto VARCHAR(10) NOT NULL,
    precio_anterior DECIMAL(10, 2) NOT NULL,
    precio_nuevo DECIMAL(10, 2) NOT NULL,
    fecha_cambio DATETIME NOT NULL,
    CONSTRAINT fk_auditoria_productos 
        FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);


-- ----------------------------------------------------------------------------
-- 3. CREACIÓN DE TABLAS CLIENTES
-- ----------------------------------------------------------------------------

CREATE TABLE clientes (
    id_cliente VARCHAR(10) NOT NULL,
    nombre_cliente VARCHAR(100) NOT NULL,
    nit_cliente VARCHAR(20) NOT NULL,
    direccion_cliente VARCHAR(150) NOT NULL,
    telefono_cliente VARCHAR(20) NOT NULL,
    correo_cliente VARCHAR(100) NOT NULL,
    CONSTRAINT pk_clientes PRIMARY KEY (id_cliente),
    CONSTRAINT uq_cliente_nit UNIQUE (nit_cliente)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 4. CREACIÓN DE TABLAS ENCARGADOS
-- ----------------------------------------------------------------------------

CREATE TABLE encargados (
    id_encargado VARCHAR(10) NOT NULL,
    nombre_encargado VARCHAR(100) NOT NULL,
    telefono_encargado VARCHAR(20) NOT NULL,
    CONSTRAINT pk_encargados PRIMARY KEY (id_encargado)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 5. CREACIÓN DE TABLAS ALMACENAMIENTOS
-- ----------------------------------------------------------------------------

CREATE TABLE almacenamientos (
    id_almacenamiento VARCHAR(10) NOT NULL,
    capacidad_cajas INT NOT NULL,
    CONSTRAINT pk_almacenamientos PRIMARY KEY (id_almacenamiento)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 6. CREACIÓN DE TABLAS SEDES
-- ----------------------------------------------------------------------------

CREATE TABLE sedes (
    id_sede VARCHAR(10) NOT NULL,
    nombre_sede VARCHAR(100) NOT NULL,
    ubicacion_sede VARCHAR(150) NOT NULL,
    id_encargado VARCHAR(10) NOT NULL,
    id_almacenamiento VARCHAR(10) NOT NULL,
    CONSTRAINT pk_sedes PRIMARY KEY (id_sede),
    CONSTRAINT fk_sedes_encargados FOREIGN KEY (id_encargado) REFERENCES encargados(id_encargado),
    CONSTRAINT fk_sedes_almacenamientos FOREIGN KEY (id_almacenamiento) REFERENCES almacenamientos(id_almacenamiento)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 7. CREACIÓN DE TABLAS INVENTARIO
-- ----------------------------------------------------------------------------

CREATE TABLE inventario (
    id_producto VARCHAR(10) NOT NULL,
    id_sede VARCHAR(10) NOT NULL,
    stock_actual INT NOT NULL,
    stock_minimo INT NOT NULL,
    CONSTRAINT pk_inventario PRIMARY KEY (id_producto, id_sede),
    CONSTRAINT fk_inventario_productos FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    CONSTRAINT fk_inventario_sedes FOREIGN KEY (id_sede) REFERENCES sedes(id_sede)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 8. CREACIÓN DE TABLAS PEDIDOS
-- ----------------------------------------------------------------------------

CREATE TABLE pedidos (
    id_pedido VARCHAR(10) NOT NULL,
    fecha_pedido DATETIME NOT NULL,
    id_cliente VARCHAR(10) NOT NULL,
    id_sede VARCHAR(10) NOT NULL,
    CONSTRAINT pk_pedidos PRIMARY KEY (id_pedido),
    CONSTRAINT fk_pedidos_clientes FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    CONSTRAINT fk_pedidos_sedes FOREIGN KEY (id_sede) REFERENCES sedes(id_sede)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 9. CREACIÓN DE TABLAS DETALLE PEDIDO
-- ----------------------------------------------------------------------------

CREATE TABLE detalle_pedido (
    id_pedido VARCHAR(10) NOT NULL,
    id_producto VARCHAR(10) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    cantidad_pedida INT NOT NULL,
    CONSTRAINT pk_detalle_pedido PRIMARY KEY (id_pedido, id_producto),
    CONSTRAINT fk_detalle_pedidos FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    CONSTRAINT fk_detalle_productos FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 10. CREACIÓN DE TABLAS VENDEDORES
-- ----------------------------------------------------------------------------

CREATE TABLE vendedores (
    id_vendedor VARCHAR(10) NOT NULL,
    nombre_vendedor VARCHAR(100) NOT NULL,
    id_sede VARCHAR(10) NOT NULL,
    telefono_vendedor VARCHAR(20) NOT NULL,
    CONSTRAINT pk_vendedores PRIMARY KEY (id_vendedor),
    CONSTRAINT fk_vendedores_sedes FOREIGN KEY (id_sede) REFERENCES sedes(id_sede)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 11. CREACIÓN DE TABLAS IDIOMAS VENDEDORES
-- ----------------------------------------------------------------------------

CREATE TABLE vendedor_idiomas (
    id_vendedor VARCHAR(10) NOT NULL,
    idioma VARCHAR(30) NOT NULL,
    CONSTRAINT pk_vendedor_idiomas PRIMARY KEY (id_vendedor, idioma),
    CONSTRAINT fk_idiomas_vendedores FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
) ENGINE=InnoDB;

-- ----------------------------------------------------------------------------
-- 1. CREACIÓN DE TABLAS VENDEDOR COBERTURA
-- ----------------------------------------------------------------------------

CREATE TABLE vendedor_cobertura (
    id_vendedor VARCHAR(10) NOT NULL,
    municipio_cobertura VARCHAR(50) NOT NULL,
    CONSTRAINT pk_vendedor_cobertura PRIMARY KEY (id_vendedor, municipio_cobertura),
    CONSTRAINT fk_cobertura_vendedores FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
) ENGINE=InnoDB;