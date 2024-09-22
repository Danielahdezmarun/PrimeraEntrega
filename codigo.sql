DROP DATABASE IF EXISTS lafarmacia;
CREATE DATABASE lafarmacia;

USE lafarmacia;

-- Crear tabla CLIENTE: Esta tabla permite la creación de los cliente, PK es idcliente que corresponde al numero de cédula

CREATE TABLE CLIENTE (
  idcliente INT NOT NULL AUTO_ INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  telefono VARCHAR(20),
  correo VARCHAR(255),
  direccion VARCHAR(255),
 
  PRIMARY KEY (idcliente)
);
  
-- Crear tabla CATEGORIA: Esta tabla indica a que categoria de producto pertenece el producto seleccionado por el cliente, facilita la agrupacion de los productos y su busqueda

CREATE TABLE CATEGORIA (
  idcategoria INT AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
 
  PRIMARY KEY (idcategoria)
);

-- Crear tabla PRODUCTO: Esta tabla identifica el producto y su precio unitario
  
CREATE TABLE PRODUCTO (
  idproducto INT AUTO INCREMENT
  nombre VARCHAR(255) NOT NULL,
  idcategoria INT
  preciounitario DECIMAL (10,2)

  PRIMARY KEY (idproducto)
  FOREIGN KEY (idcategoria)REFERENCES TABLE CATEGORIA;
);

-- Crear tabla Sucursal: Esta tabla permite identificar las sucursales existentes de donde estan los productos solicitados por el cliente

CREATE TABLE SUCURSAL (
  idsucursal INT AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  direccion VARCHAR(255),

  PRIMARY KEY (idsucursal)

);
  
-- Crear tabla Inventario: Permite visualizar el inventario de cada producto en cada sucursal

CREATE TABLE INVENTARIO (
  idinventario INT AUTO_INCREMENT,
  idsucursal INT,  
  idproducto INT,
  cantidad INT,
  
  PRIMARY KEY (idinventario)
);

-- Crear tabla domiciliarios: Esta tabla permite visualizar los domiciliarios asignados

CREATE TABLE DOMICILIARIOS (
  Iddomiciliario INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  telefono VARCHAR(20),
  
  PRIMARY KEY (iddomiciliario)
);

  -- Crear tabla Orden: Esta tabla visualiza la orden de compra y la información correlacionada
CREATE TABLE ORDEN (
  idorden INT NOT NULL AUTO_INCREMENT,
  fecha DATE,
  idcliente INT,
  idproducto INT,
  cantidad INT,
  idsucursal INT,
  iddomiciliario,

  PRIMARY KEY(idorden)
  FOREIGN KEY(idcliente) REFERENCES TABLE CLIENTE
              (idproducto) REFERENCES TABLE PRODUCTO
              (idsucursal) REFERENCES TABLE SUCURSAL
              (iddomiciliario) REFERENCES TABLE DOMICILIO 

);

-- Definicion de FK o claves foraneas

-- Producto
ALTER PRODUCTO ADD CONSTRAINT FK_PRODUCTO_CATEGORIA
  FOREIGN KEY (idcategoria) REFERENCES CATEGORIA (idcategoria);

-- Inventario

ALTER TABLE INVENTARIO 
  ADD CONSTRAINT FK_INVENTARIO_SUCURSAL
  FOREIGN KEY (idsucursal) REFERENCES SUCURSAL (idsucursal);

ALTER TABLE INVENTARIO
  ADD CONSTRAINT FK_INVENTARIO_PRODUCTO
  FOREIGN KEY (idproducto) REFERENCES PRODUCTO (idproducto);

-- Orden

ALTER TABLE ORDEN
  ADD CONSTRAINT FK_ORDEN_CLIENTE
  FOREIGN KEY (idcliente) REFERENCES CLIENTE (idcliente);

ALTER TABLE ORDEN
  ADD CONSTRAINT FK_ORDEN_PRODUCTO
  FOREIGN KEY (idproducto) REFERENCES PRODUCTO (idproducto);

ALTER TABLE ORDEN
  ADD CONSTRAINT FK_ORDEN_SUCURSAL
  FOREIGN KEY (idsucursal) REFERENCES SUCURSAL (idsucursal);

ALTER TABLE ORDEN
  ADD CONSTRAINT FK_ORDEN_DOMICILIOS
  FOREIGN KEY (iddomicilio) REFERENCES DOMICILIOS (iddomicilio);




