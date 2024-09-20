create schema if not exists netology;

drop table if exists netology.orders;

drop table if exists netology.customers;

create table if not exists netology.customers
(
    id bigserial primary key,
    name text not null,
    surname text not null,
    age int not null,
    phone_number bigint not null
);

create table if not exists netology.orders
(
    id bigserial primary key,
    date date not null,
    customer_id bigserial not null,
    product_name text not null,
    amount bigint not null,
    constraint customer_order_fk foreign key (customer_id) references netology.customers (id)
);