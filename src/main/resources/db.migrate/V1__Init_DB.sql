create sequence hibernate_sequence start 1 increment 1;

create table message (
    id int4 not null,
    filename varchar(255),
    tag varchar(255),
    text varchar(255),
    user_id int8,
    primary key (id)
);

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    activation_code varchar(255),
    active boolean not null,
    email varchar(255),
    password varchar(255),
    username varchar(255),
    primary key (id)
);

alter table if exists message
    add constraint FK70bv6o4exfe3fbrho7nuotopf
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint FKfpm8swft53ulq2hl11yplpr5
    foreign key (user_id) references usr;