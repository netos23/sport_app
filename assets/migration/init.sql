CREATE TABLE IF NOT EXISTS sportsmen
(
    id         integer primary key,
    name       text    not null,
    surname    text    not null,
    patronymic text    not null,
    category   integer not null,
    birthday   integer,
    sport      text
);