# trabajo_de_bases_de_datos
bases datos

1): creo la base de datos llamada trabajo1
mysql> create database trabajo1;

2): aca creo la tabla
mysql> create table cliente(
    -> id int,
    -> nombre varchar(50),
    -> telefono varchar(20),
    -> email varchar(10));

3): aca insertamos el contenido de la tabla 
mysql> INSERT INTO cliente (id, nombre, telefono, email)
    -> VALUES (25, 'juan carlos', 32357895, 'juan@gmail.com');

4): aca ponemos una nueva colubna llamada total_comprado float
mysql> alter table cliente add column total_comprado float;

5): miramos la tabla
mysql> select *from cliente;


6): lo mismo creamos una tabla llamada fecha_de_compra date
mysql> alter table cliente add column fecha_de_compra date;

7):  lo mismo creamos una tabla llamada productos_comprados date
mysql> alter table cliente add column productos_comprados date;

8)aca como hay nulls de los nuevas columbas poenos el valor
mysql> update cliente set total_comprado = 120.000 where total_comprado;

9);aca como hay nulls de los nuevas columbas poenos el valor
mysql> update cliente set total_comprado = 120000 where total_comprado;

10):ca como hay nulls de los nuevas columbas poenos el valor
mysql> update cliente set total_comprado = 120000 where total_comprado is null;

11):ca como hay nulls de los nuevas columbas poenos el valor
mysql> update cliente set total_comprado = 120.000 where total_comprado is null;

12): vemos la tabla
mysql> select *from cliente;

13):aca modifique un tipo de dato que estaba mal
mysql> alter table cliente modify column  productos_comprados int;

14) :aca agregue otro dato que tenia un null
mysql> update cliente set productos_comprados = 22 where productos_comprados is null ;

15):inserte mas contenido en la tabla 
mysql> INSERT INTO cliente (id, nombre, telefono, email, total_comprado, fecha_de_compra, productos_comprados)
    -> VALUES (26, 'julio', 3546549, 'julio@gmail.com', 400000, '2025-01-16', 33);

16):inserte mas contenido en la tabla
mysql> INSERT INTO cliente (id, nombre, telefono, email)
    -> VALUES (26, 'ana perez', 31234567, 'ana.perez@example.com');
Query OK, 1 row affected (0.04 sec)

mysql> INSERT INTO cliente (id, nombre, telefono, email)
    -> VALUES (27, 'luis rodriguez', 31098765, 'luis.rodriguez@outlook.com');
Query OK, 1 row affected (0.01 sec)

17): y aca pusimos los 4 ejercios con and/or y where
mysql> select*from cliente where total_comprado > 100000 and fecha_de_compra > "2025-02-01";

18): y aca pusimos los 4 ejercios con and/or y where
mysql> SELECT * FROM cliente WHERE total_comprado > 400000 AND productos_comprados > 30;

19): y aca pusimos los 4 ejercios con and/or y where
mysql> SELECT * FROM cliente WHERE productos_comprados < 30 or total_comprado < 150000;
 
20): y aca pusimos los 4 ejercios con and/or y where
mysql> SELECT * FROM cliente WHERE total_comprado > 150000 AND productos_comprados > 25;
