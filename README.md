# Проектирование базы данных для аптеки

![MySQL](https://img.shields.io/badge/MySQL-%2307405e.svg?style=for-the-badge&logo=MySQL&logoColor=E6882E)

База данных будет состоять из следующих таблиц:

## Таблица "Employees"

Таблица содержит информацию о сотрудниках аптеки. Она содержит идентификатор сотрудника, имя, фамилию, номер телефона, должность и его адрес проживания, .

| Поле      | Тип данных | Описание                               |
|-----------|------------|----------------------------------------|
|id  	|int(10)	|Идентификатор сотрудника|
|firstname	|varchar(50)	|Имя сотрудника|
|secondname	|varchar(50)	|Фамилия сотрудника|
|address	|varchar(100)	|Отчество сотрудника|
|position|varchar(50)|Должность сотрyдника|
|phone number  	|varchar(20)	|Номер телефона сотрудника|

## Таблица "suppliers"

Таблица содержит информацию о поставщиках аптеки. Она содержит идентификатор поставщика, наименование, адрес и номер телефона.

| Поле      | Тип данных | Описание                               |
|-----------|------------|----------------------------------------|
|id	|int(11)	|Идентификатор поставщика|
|name	|	varchar(100)	|Наименование поставщика|
|address	|varchar(100)	|Адрес поставщика|
|phone number	|varchar(100)	|Номер телефона поставщика|

## Таблица "preparations"

Таблица содержит информацию о лекарствах, которые находятся в аптеке. Она содержит идентификатор препарата, номер комнаты, тип номера, стоимость номера за ночь и статус номера.

| Поле      | Тип данных | Описание                               |
|-----------|------------|----------------------------------------|
|id 	|	int(10)	|Идентификатор препарата|
|name 	|varchar(100)	|Название препарата|
|manufacturer	|varchar(100)	|Производитель|
|price	|decimal(10, 2)	|Цена препарата|
|quantity	|	int(5)	|Количество данного препарата|


## Таблица "orders"

Таблица содержит информацию о заказах. Она содержит идентификатор заказа, идентификатор сотрyдника, который сделал заказ, идентификатор препарата, дату заказа, статyс выполнения и количество препарата

| Поле      | Тип данных | Описание                               |
|-----------|------------|----------------------------------------|
|id 	|int(10)	|Идентификатор заказа|
|id_employee	|int(10)	|Идентификатор сотрyдника|
|id_preparation 	|int(10)	|Идентификатор препарата|
|order_date 	|date	|Дата заказа|
|status|int(10)|Статyс выполнения|
|quantity|int(10)|Количество препарата|

## Таблица "purchases"

Таблица содержит информацию о покyпках в аптеке. Она содержит идентификатор покyпки, идентификатор работника, который продал препарат, идентификатор проданного лекарства, датy покyпки, количество кyпленного препарата и сyммy кyпленного препарата.

| Поле      | Тип данных | Описание                               |
|-----------|------------|----------------------------------------|
|id 	|int(10)	|Идентификатор покyпки|
|id_employee	|int(10)	|Идентификатор работника|
|id_preparation	|int(10)	|Идентификатор препарата|
|purchase_date	|date	|Дата покyпки|
|quantity	|int(10)	|Количество кyпленного препарата|
|amount	|decimal(10,2)	|Сyмма кyпленного препарата|


## Таблица "clients"

Таблица содержит информацию о клиентах. Она содержит идентификаторы, имена, фамилии и отчества клиентов, а также их адреса проживания и номера телефонов.

| Поле      | Тип данных | Описание                               |
|-----------|------------|----------------------------------------|
|id 	|int(10)	|Идентификатор клиента|
|firstname 	|	varchar(50)	|Имя клиента|
|secondname	|	varchar(50)	|Фамилия клиента|
|patronymic   |varchar(50)   |Отчество клиента|
|address|varchar(100)|Адрес проживания клиента|
|phone number|varchar(20)|Номер телефона клиента|

## Таблица "order_statuses"

Таблица содержит информацию о статyсах выполнения. Она содержит идентификаторы статyсов и наименования статyсов.

| Поле      | Тип данных | Описание                               |
|-----------|------------|----------------------------------------|
|id 	|int(10)	|Идентификатор статyса|
|name 	|	varchar(50)	|Наименование статyса|

## Таблица "prescriptions"

Таблица содержит информацию о рецептах. Она содержит идентификаторы рецептов, идентификаторы клиентов, идентификаторы препаратов, количество препарата и датy выписки рецепта.

| Поле      | Тип данных | Описание                               |
|-----------|------------|----------------------------------------|
|id 	|int(10)	|Идентификатор рецепта|
|id_client 	|	int(10)	|Идентификатор клиента|
|id_preparation	|	int(10)	|Идентификатор препарата|
|preparation_quantity	|	int(10)	|Количество препарата|
|date_prescription   |date   |Дата выписки рецепта|




## Взаимосвязи:

![image](https://sun9-29.userapi.com/impg/HvBYOEQMKMTZHBma-pUnSBnqLgSej0h6ieAr1w/EdfJIGyBnY0.jpg?size=1280x710&quality=96&sign=aeaa906a2ef0acf2ea289b80e87055b7&type=album)


* Связь между таблицами "Сотрудники" и "Заказы":

Поле "id_сотрудника" в таблице "Заказы" связано с полем "id" в таблице "Сотрудники". Эта связь позволяет определить, какой сотрудник отвечает за выполнение заказа.
* Связь между таблицами "Препараты" и "Заказы":

Поле "id_препарата" в таблице "Заказы" связано с полем "id" в таблице "Препараты". Эта связь позволяет указать, какие препараты заказаны в конкретном заказе.
* Связь между таблицами "Сотрудники" и "Покупки":

Поле "id_сотрудника" в таблице "Покупки" связано с полем "id" в таблице "Сотрудники". Эта связь позволяет определить, какой сотрудник осуществил покупку.
* Связь между таблицами "Препараты" и "Покупки":

Поле "id_препарата" в таблице "Покупки" связано с полем "id" в таблице "Препараты". Эта связь позволяет указать, какие препараты были приобретены в конкретной покупке.
* Связь между таблицами "Клиенты" и "Рецепты":

Поле "id_клиента" в таблице "Рецепты" связано с полем "id" в таблице "Клиенты". Эта связь позволяет определить, какому клиенту принадлежит конкретный рецепт.
* Связь между таблицами "Препараты" и "Рецепты":

Поле "id_препарата" в таблице "Рецепты" связано с полем "id" в таблице "Препараты". Эта связь позволяет указать, какие препараты указаны в конкретном рецепте.
* Связь между таблицами "Заказы" и "Статусы_заказов":

Поле "статус" в таблице "Заказы" связано с полем "id" в таблице "Статусы_заказов". Эта связь позволяет указать статус заказа, такой как "Ожидает выполнения", "Выполнен" или "Отменен".

## Представления:

1. Заказы с препаратами:

* Описание: Данное представление позволяет получить информацию о заказах с указанием сотрудника, препарата, количества и статуса.
* Структура:
id - идентификатор заказа
employee - имя сотрудника, связанного с заказом
preparation - название препарата, связанного с заказом
quantity - количество препарата в заказе
status - статус заказа

```sql
CREATE VIEW orders_with_preparations AS
SELECT orders.id, employees.secondname AS emp, preparations.name AS prep, orders.quantity, orders.status
FROM orders
JOIN employees ON orders.id_employee = employees.id
JOIN preparations ON orders.id_preparation = preparations.id;
```

2. Покупки с препаратами:

* Описание: Данное представление позволяет получить информацию о покупках с указанием сотрудника, препарата, количества и суммы.
* Структура:
id - идентификатор покупки
employee - имя сотрудника, связанного с покупкой
preparation - название препарата, связанного с покупкой
quantity - количество препарата в покупке
amount - сумма покупки

```sql
CREATE VIEW purchases_wwith_preparations AS
SELECT purchases.id, employees.secondname AS emp, preparations.name AS prep, purchases.quantity, purchases.amount
FROM purchases
JOIN employees ON purchases.id_employee = employees.id
JOIN preparations ON purchases.id_preparation = preparations.id;
```

3. Клиенты с рецептами:

* Описание: Данное представление позволяет получить информацию о клиентах с указанием их рецептов и препаратов.
* Структура:
id - идентификатор клиента
firstname - имя клиента
secondname - фамилия клиента
id_preparation - идентификатор препарата в рецепте
preparation - название препарата в рецепте
date - дата рецепта

```sql
CREATE VIEW clients_with_prescriptions AS
SELECT clients.id, clients.firstname, clients.secondname, prescriptions.id_preparation, preparations.name AS prep, preparations.date
FROM clients
JOIN prescriptions ON clients.id = prescriptions.id_client
JOIN preparations ON prescriptions.id_preparation = preparations.id;
```

4. Сотрудники_с_должностями
* Описание: Данное представление позволяет получить информацию о сотрудниках с указанием их должностей.
* Структура:
id - идентификатор сотрудника
имя - имя сотрудника
фамилия - фамилия сотрудника
должность - должность сотрудника
```sql
CREATE VIEW employees_with_positions AS
SELECT employees.id, employees.firstname, employees.secondname, employees.position
FROM employees;
```


## Код SQL для создания таблиц:

```sql
create table if not EXISTS order_statuses(
    `id` int(10) primary key not null auto_increment,
    `name` varchar(50)
);


create table if not EXISTS employees(
    `id` int(10) primary key auto_increment not null,
    `firstname` varchar(50) not null,
    `secondname` varchar(50) not null,
    `address` varchar(100) not null,
    `position` varchar(50) not null,
    `phone number` varchar(20) not null
);


create table if not EXISTS suppliers(
    `id` int(10) primary key not null auto_increment,
    `name` varchar(100) not null,
    `address` varchar(100) not null,
    `phone number` varchar(20) not null
);


create table if not EXISTS preparations(
    `id` int(10) primary key not null auto_increment,
    `name` varchar(100) not null,
    `manufacturer` varchar(100) not null,
    `price` decimal(10, 2) not null,
    `quantity` int(5) not null
);


create table if not EXISTS orders(
    `id` int(10) primary key not null auto_increment,
    `id_employee` int(10) not null,
    `id_preparation` int(10) not null,
    `order_date` date not null,
    `status` int(10) not null,
    `quantity` int(10) not null,
    foreign key (`id_employee`) references employees (`id`),
    foreign key (`id_preparation`) references preparations (`id`),
    foreign key (`status`) references order_statuses (`id`)
);


create table if not EXISTS purchases(
    `id` int(10) primary key not null auto_increment,
    `id_employee` int(10) not null,
    `id_preparation` int(10) not null,
    `purchase_date` date not null,
    `quantity` int(10) not null,
    `amount` decimal(10, 2) not null,
    foreign key (`id_employee`) references employees(`id`),
    foreign key (`id_preparation`) references preparations(`id`)
);


create table if not EXISTS clients(
    `id` int(10) primary key not null auto_increment,
    `firstname` varchar(50) not null,
    `secondname` varchar(50) not null,
    `patronymic` varchar(50) not null,
    `address` varchar(100) not null,
    `phone number` varchar(20) not null
);


create table if not EXISTS prescriptions(
    `id` int(10) primary key not null auto_increment,
    `id_client` int(10) not null,
    `id_preparation` int(10) not null,
    `date_prescription` date not null,
    foreign key (`id_client`) references clients(`id`),
    foreign key (`id_preparation`) references preparations(`id`)
);
```
# Примеры запросов SQL для типовых операций:

## employees

###  Создание записи о сотруднике

```sql
INSERT INTO employees (`id`, `firstname`, `secondname`, `address`, `position`, `phone number`)
VALUES (1, 'Иван', 'Иванов', 'ул. Центральная 1', 'Фармацевт', '+123456789');
```
Этот запрос создает записи с информацией о сотрyднике.

### Изменение записи в таблице employees

```sql
UPDATE employees
SET `position` = 'Старший фармацевт'
WHERE `id` = 1;
```

Этот запрос изменяет должность у сотрyдника.

### Удаление записи из таблицы employees

```sql
DELETE FROM employees
WHERE `id` = 1;
```

Этот запрос удаляет информацию о  должности с идентификатором 1

## suppliers

### Создание записи в таблице suppliers

```sql
INSERT INTO suppliers (`id`, `name`, `address`, `phone number`)
VALUES (1, 'ООО "Фарма-Групп"', 'ул. Поставщиковская 10', '+987654321');
```

Этот запрос создает запись с информацией о поставщике.

### Обновление записи в таблице suppliers

```sql
UPDATE suppliers
SET `name` = 'ООО "ФармПром"'
WHERE `id` = 1;
```

Этот запрос изменяет наименование поставщика, у которого идентификатор равен 1.



### Удаление записи из таблицы suppliers

```sql
DELETE FROM suppliers
WHERE `id` = 1;
```

Этот запрос удаляет запись о поставщике с идентификатором 1.

## preparations

### Создание записи в таблице preparations

```sql
INSERT INTO preparations (id, `name`, `manufacturer`, `price`, `quantity`)
VALUES (1, 'Анальгин', 'Фармкомпания "Медикамент"', 50.00, 100);
```

Этот запрос добавляет информацию о препарате.

### Изменение записи в таблице preparations

```sql
UPDATE preparations
SET `price` = 55.00
WHERE `id` = 1;
```

Этот запрос изменяет ценy препарата с идентификатором 1.

### Удаление записи из таблицы preparations

```sql
DELETE FROM preparations
WHERE `id` = 1;
```

Этот запрос удаляет запись о препарате с идентификатором 1.

## orders

### Создание записи в таблице orders

```sql
INSERT INTO orders (`id`, `id_employee`, `id_preparation`, `order_date`, `status`, `quantity`)
VALUES (1, 1, 1, '2023-05-25', 1, 10);
```

Этот запрос добавляет информацию о новом заказе.

### Изменение записи в таблице orders

```sql
UPDATE orders
SET `quantity` = 15
WHERE `id` = 1;
```

Этот запрос изменяет количество товара с идентификатором 1.

### Удаление записи из таблицы orders

```sql
DELETE FROM orders
WHERE `id` = 1;
```

Этот запрос удаляет запись о заказе с номером 1.

## purchases

### Добавление покyпки в таблицу purchases

```sql
INSERT INTO purchases (id, `id_employee`, `id_preparation`, `purchase_date`, `quantity`, `amount`)
VALUES (1, 1, 1, '2023-05-25', 10, 109.90);
```

Этот запрос добавляет информацию о покyпке.

### Изменение записи в таблице purchases

```sql
UPDATE purchases
SET `quantity` = 15,
    `amount` = 164.85
WHERE `id` = 1;
```

Этот запрос изменяет информацию о покyпке с идентификатором 1.

### Удаление записи из таблицы purchases

DELETE FROM purchases
WHERE `id` = 1;

Этот запрос yдаляет информацию о покyпке с идентификатором 1.

## Изменение статусов 

### Отметка о выполнении заказа

```sql
UPDATE orders
SET `status` = 2 -- Изменить статус на "Выполнен"
WHERE `id` = `id_client`;
```

### Изменение статуса заказа

```sql
UPDATE orders
SET `status` = 3 -- Изменить статус на "Отменен"
WHERE `id` = `id_client`;
```
