# Creación de base de datos para la gestion y control de domicilios en las dististas sucursales de la farmacia.co

## Problema
Lafarmacia.co es un emprendimiento Colombiano dedicado a la venta y comercialización de medicamentos y dispositivos médicos que cuenta con dos sucursales en la ciudad de Bogotá, en los últimos meses la operación ha tenido un crecimiento considerable en su operación lo que ha obligado a la administración a diseñar y crear una base de datos que proporcione  información sobre la creación y gestion de clientes, creación y asignación de domiciliarios, asignación de sucursales y su respectivos inventarios. Esta herramienta debe proporcionar informacion clara y precisa que permita a la marca aumentar su eficiencia en su operacion y en la toma de decisiones estrategicas en pro de su crecimiento.

## Descripción del problema

1.Gestión de Clientes: La base de datos debe permitir la creación y gestion de clientes en cada una de las sucursales. 

2 Sucursales: Debe proporcionar visualización del stock de cada una de las sucursales. 

3.Gestion de Domiciliarios por sucursal:  Debe proporcionar información sobre cada uno de los domiciliarios dependiendo de cada una de las sucursales y pedidos asignados.

4.Transacciones: Debe proporcionar las transacciones en cada una de las sucursales.


## Objetivo

Diseñar e implementar una base de datos relaciones que permita la gestion y visualización de los domicilios de forma clara,eficiente y organizada en cada una de las sucursales. Debe ofrecer seguimiento detallado sobre información del cliente, asignacion de domiciliarios, sucursal de envio, stock en cada una de las bodegas o sucursales, permitiendo informacion real para la administración y así tomar deficiones estrategicas y opertavivas que mejoren la eficiencia en pro del crecimiento de la marca.

## Descripción de la base de datos.

A continuación se relaciona los principales elementos de la base de datos relacionados con la creación e información de clientes, asignación y creacion de domiciliarios, asignacion de sucursal, stock o inventario de sucursal, transacciones de ventas.

Tablas:

## 1.Cliente:

Almacena información sobre los clientes que realizan compras a través de lafarmacia.co
Atributos: IDCLIENTE, NOMBRE, TELEFONO, CORREO, DIRECCION.

## 2. Categoria 

Contiene información sobre cada una de las categorias que se distribuyen en lafarmacia.co
Atributos: IDCATEGORIA, NOMBRE

## 3. Producto

Guarda información sobre cada uno de los productos que se distribuyen a través del e-commerce
Atributos: IDPRODUCTO, NOMBRE, IDCATEGORIA, CANTIDAD

## 4. Sucursal

Proporciona información de cada sucursal o bodega de la marca
Atributos: IDSUCURSAL, NOMBRE, DIRECCIÓN

## 5.Inventario
Almacena las cantidades y existencias de cada producto en cada sucursal
Atributos: IDINVENTARIO, IDSUCURSAL, IDPRODUCTO, CANTIDAD

## 6. Domiciliario
Contiene información sobre los domiciliarios asignados.
Atributos: IDDOMICILIARIO, NOMBRE,TELEFONO

## 7. Venta
Almacena información relacionada a las ventas de cada sucursal.
Atributos: IDVENTA,IDCLIENTE,FECHA,IDPRODUCTO,CANTIDAD, IDSUCURSAL, IDDOMICILIARIO 


