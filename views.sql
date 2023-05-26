-- Представление "Заказы_с_препаратами"
CREATE VIEW orders_with_preparations AS
SELECT orders.id, employees.secondname AS emp, preparations.name AS prep, orders.quantity, orders.status
FROM orders
JOIN employees ON orders.id_employee = employees.id
JOIN preparations ON orders.id_preparation = preparations.id;

-- Представление "Покупки_с_препаратами"
CREATE VIEW purchases_wwith_preparations AS
SELECT purchases.id, employees.secondname AS emp, preparations.name AS prep, purchases.quantity, purchases.amount
FROM purchases
JOIN employees ON purchases.id_employee = employees.id
JOIN preparations ON purchases.id_preparation = preparations.id;

-- Представление "Клиенты_с_рецептами"
CREATE VIEW clients_with_prescriptions AS
SELECT clients.id, clients.firstname, clients.secondname, prescriptions.id_preparation, preparations.name AS prep, preparations.date
FROM clients
JOIN prescriptions ON clients.id = prescriptions.id_client
JOIN preparations ON prescriptions.id_preparation = preparations.id;

-- Представление "Сотрудники_с_должностями"
CREATE VIEW employees_with_positions AS
SELECT employees.id, employees.firstname, employees.secondname, employees.position
FROM employees;