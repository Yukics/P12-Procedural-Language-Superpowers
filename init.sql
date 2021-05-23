create user alumne PASSWORD 'password'; --With this line we create customer01 and assign its password
comment on role alumne is 'Dell data owner'; --This is just a comment about customer01
create database "dell" with owner alumne; --We are creating our database and assign it to our user

create schema "data"; --We create the schema where we will be working on
comment on schema "data" is 'Actual dell data schema'; --Just a comment
alter schema "data" owner to alumne;

---PSQL---
\c dell;
SET schema 'data';
\i /home/routedellstore;


ALTER DATABASE dell OWNER TO alumne;
alter table "categories" owner to alumne;
alter table "cust_hist" owner to alumne;
alter table "customers" owner to alumne;
alter table "inventory" owner to alumne;
alter table "orderlines" owner to alumne;
alter table "orders" owner to alumne;
alter table "products" owner to alumne;
alter table "reorder" owner to alumne;