create table if not exists users (
    username text unique primary key not null,
    created timestamp
);

create table if not exists stands (
    name text primary key unique not null,
    owner_username text references users(username) on delete cascade null,
    released bool default true,
    time_claimed timestamp
);