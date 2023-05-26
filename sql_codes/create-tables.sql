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
