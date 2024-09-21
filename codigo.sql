DROP DATABASE IF EXISTS lafarmacia;
CREATE DATABASE lafarmacia;

USE lafarmacia;

-- Crear tabla CLIENTE

CREATE TABLE CLIENTE (
  idcliente INT NOT NULL AUTO_ INCREMENT,
  nombre VARCHAR(255) NOT NULL
  telefono VARCHAR(20)
  correo VARCHAR(255)
  direccion VARCHAR(255),
 
  PRIMARY KEY (idcliente)
);
  
-- Crear tabla CATEGORIA

CREATE TABLE CATEGORIA (
  idcategoria INT AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
 
  PRIMARY KEY (idcategoria)
);

- Crear tabla PRODUCTO
  
CREATE TABLE PRODUCTO (
  idproducto INT AUTO INCREMENT
  nombre VARCHAR(255) NOT NULL,
  idcategoria INT
  preciounitario DECIMAL (10,2)

  PRIMARY KEY (idproducto)
