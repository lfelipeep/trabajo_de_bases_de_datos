
mysql> create database trabajo1;


mysql> create table cliente(
    -> id int,
    -> nombre varchar(50),
    -> telefono varchar(20),
    -> email varchar(10));

 
mysql> INSERT INTO cliente (id, nombre, telefono, email)
    -> VALUES (25, 'juan carlos', 32357895, 'juan@gmail.com');


mysql> alter table cliente add column total_comprado float;


mysql> select *from cliente;



mysql> alter table cliente add column fecha_de_compra date;

mysql> alter table cliente add column productos_comprados date;

mysql> update cliente set total_comprado = 120.000 where total_comprado;


mysql> update cliente set total_comprado = 120000 where total_comprado;


mysql> update cliente set total_comprado = 120000 where total_comprado is null;


mysql> update cliente set total_comprado = 120.000 where total_comprado is null;


mysql> select *from cliente;


mysql> alter table cliente modify column  productos_comprados int;


mysql> update cliente set productos_comprados = 22 where productos_comprados is null ;

 
mysql> INSERT INTO cliente (id, nombre, telefono, email, total_comprado, fecha_de_compra, productos_comprados)
     VALUES (26, 'julio', 3546549, 'julio@gmail.com', 400000, '2025-01-16', 33);


mysql> INSERT INTO cliente (id, nombre, telefono, email)
     VALUES (26, 'ana perez', 31234567, 'ana.perez@example.com');
Query OK, 1 row affected (0.04 sec)

mysql> INSERT INTO cliente (id, nombre, telefono, email)
     VALUES (27, 'luis rodriguez', 31098765, 'luis.rodriguez@outlook.com');
Query OK, 1 row affected (0.01 sec)


mysql> select*from cliente where total_comprado > 100000 and fecha_de_compra > "2025-02-01";


mysql> SELECT * FROM cliente WHERE total_comprado > 400000 AND productos_comprados > 30;


mysql> SELECT * FROM cliente WHERE productos_comprados < 30 or total_comprado < 150000;
 

mysql> SELECT * FROM cliente WHERE total_comprado > 150000 AND productos_comprados > 25;
