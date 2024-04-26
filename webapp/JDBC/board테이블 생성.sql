use jsp;
create table board (
    num int primary key Key AUTO_INCREMENT,
    title varchar(200) not null,
    content VARCHAR(2000) not null,
    id VARCHAR(10) not null,
    postdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
    visitcount int
);
