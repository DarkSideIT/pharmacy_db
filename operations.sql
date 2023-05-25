-- Создание записи о сотруднике
INSERT INTO employees (`id`, `firstname`, `secondname`, `address`, `position`, `phone number`)
VALUES (1, 'Иван', 'Иванов', 'ул. Центральная 1', 'Фармацевт', '+123456789');

-- Обновление записи о сотруднике
UPDATE employees
SET `position` = 'Старший фармацевт'
WHERE `id` = 1;

-- Удаление записи о сотруднике
DELETE FROM employees
WHERE `id` = 1;

-- Создание записи о поставщике
INSERT INTO suppliers (`id`, `name`, `address`, `phone number`)
VALUES (1, 'ООО "Фарма-Групп"', 'ул. Поставщиковская 10', '+987654321');

-- Обновление записи о поставщике
UPDATE suppliers
SET `name` = 'ООО "ФармПром"'
WHERE `id` = 1;

-- Удаление записи о поставщике
DELETE FROM suppliers
WHERE `id` = 1;

-- Создание записи о препарате
INSERT INTO preparations (id, `name`, `manufacturer`, `price`, `quantity`)
VALUES (1, 'Анальгин', 'Фармкомпания "Медикамент"', 50.00, 100);

-- Обновление записи о препарате
UPDATE preparations
SET `price` = 55.00
WHERE `id` = 1;

-- Удаление записи о препарате
DELETE FROM preparations
WHERE `id` = 1;

-- Создание нового заказа
INSERT INTO orders (`id`, `id_employee`, `id_preparation`, `order_date`, `status`, `quantity`)
VALUES (1, 1, 1, '2023-05-25', 1, 10);

-- Обновление заказа
UPDATE orders
SET `quantity` = 15
WHERE `id` = 1;

-- Удаление заказа
DELETE FROM orders
WHERE `id` = 1;

-- Создание новой покупки
INSERT INTO purchases (id, `id_employee`, `id_preparation`, `purchase_date`, `quantity`, `amount`)
VALUES (1, 1, 1, '2023-05-25', 10, 109.90);

-- Обновление покупки
UPDATE purchases
SET `quantity` = 15,
    `amount` = 164.85
WHERE `id` = 1;

-- Удаление покупки
DELETE FROM purchases
WHERE `id` = 1;

-- Отметка о выполнении заказа
UPDATE orders
SET `status` = 2 -- Изменить статус на "Выполнен"
WHERE `id` = `id_client`;

-- Изменение статуса заказа
UPDATE orders
SET `status` = 3 -- Изменить статус на "Отменен"
WHERE `id` = `id_client`;