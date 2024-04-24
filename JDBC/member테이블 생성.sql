use jsp;
create table member (
    id VARCHAR(10) not null,
    pass VARCHAR(10) not null,
    name VARCHAR(10) not null,
    regidate timestamp DEFAULT current_timestamp not null,
    primary key(id)
);