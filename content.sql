-- Заполнение таблицы "order_statuses"
INSERT INTO order_statuses (id, `name`)
VALUES
  (1, 'Ожидает выполнения'),
  (2, 'Выполнен'),
  (3, 'Отменен');

-- Заполнение таблицы "employees"
INSERT INTO employees (id, firstname, secondname, address, position, `phone number`)
VALUES
  (1, 'Иван', 'Иванов', 'ул. Центральная 1', 'Фармацевт', '+123456789'),
  (2, 'Петр', 'Петров', 'ул. Пушкина 10', 'Фармацевт', '+987654321'),
  (3, 'Анна', 'Сидорова', 'ул. Гагарина 5', 'Администратор', '+555555555');

-- Заполнение таблицы "suppliers"
INSERT INTO suppliers (id, name, address, `phone number`)
VALUES
  (1, 'ООО "Фарма-Групп"', 'ул. Поставщиковская 10', '+111111111'),
  (2, 'ФармПром', 'ул. Фармацевтическая 5', '+222222222'),
  (3, 'Медикаментофарм', 'ул. Фармаскладская 7', '+333333333');

-- Заполнение таблицы "preparations"
INSERT INTO preparations (id, name, manufacturer, price, quantity)
VALUES
  (1, 'Анальгин', 'Фармкомпания "Медикамент"', 50.00, 100),
  (2, 'Аспирин', 'Байер', 75.00, 50),
  (3, 'Парацетамол', 'ФармПром', 35.00, 80);

-- Заполнение таблицы "orders"
INSERT INTO orders (`id`, `id_employee`, `id_preparation`, `order_date`, `status`, `quantity`)
VALUES
  (1, 1, 1, '2023-05-20', 1, 10),
  (2, 2, 2, '2023-05-21', 1, 5),
  (3, 3, 3, '2023-05-22', 2, 8);

-- Заполнение таблицы "purchases"
INSERT INTO purchases (`id`, `id_employee`, `id_preparation`, `purchase_date`, `quantity`, `amount`)
VALUES
  (1, 1, 1, '2023-05-23', 5, 55.00),
  (2, 2, 2, '2023-05-24', 3, 225.00),
  (3, 3, 3, '2023-05-25', 2, 70.00);

-- Заполнение таблицы "clients"
INSERT INTO clients (`id`, `firstname`, `secondname`, `patronymic`, `address`, `phone number`)
VALUES
  (1, 'Андрей', 'Смирнов', 'Васильевич', 'ул. Клиентская 1', '+444444444'),
  (2, 'Елена', 'Ковалева', 'Валерьевна', 'ул. Покупательская 5', '+666666666'),
  (3, 'Максим', 'Петров', 'Максимович', 'ул. Заказова 10', '+777777777');

-- Заполнение таблицы "prescriptions"
INSERT INTO prescriptions (`id`, `id_client`, `id_preparation`, `date_prescription`)
VALUES
  (1, 1, 1, '2023-05-23'),
  (2, 2, 2, '2023-05-24'),
  (3, 3, 3, '2023-05-25');

