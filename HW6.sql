create table customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    company   varchar(20) null,
    constraint id
        unique (id)
)
    auto_increment = 6;

create table orders
(
    id      int auto_increment
        primary key,
    product varchar(20) null,
    cost    int         null,
    constraint id
        unique (id)
)
    auto_increment = 6;

create table customers_orders_association
(
    id         int not null
        primary key,
    customerId int null,
    orderId    int null,
    constraint customers_orders_association_customers_id_fk
        foreign key (customerId) references customers (id),
    constraint customers_orders_association_orders_id_fk
        foreign key (orderId) references orders (id)
);


