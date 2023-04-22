/*users - role = many-to-one в юзере есть роль и ссылается на табл роль
role - rules = many-to-many уроли есть правила и ссылается на таблицу правила
item - users = many-to-one ссылктся на юзера
item - comments = one-to-many
item - attachs = one-to-many
item - category = many-to-one
item - state = many-to-one
*/
create table users (
    id serial primary key ,
    role_id int references roles(id)
);

create table roles (
    id serial primary key,
    role_name text,
    rule_id int references rules(id)
);

create table rules (
    id serial primary key,
    rule text
);

create table comments (
    id serial primary key,
    comment text
);

create table attachs (
    id serial primary key,
    attach text
);

create table category (
    id serial primary key,
    category int
);

create table state (
    id serial primary key,
    state text
);

create table item (
    id serial primary key,
    user_id int references users(id),
    comment_id int references comments(id),
    attach_id int references attachs(id),
    category_id int references category(id),
    state_id int references state(id)
);