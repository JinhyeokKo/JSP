use jsp;
ALTER TABLE board
    add constraint board_mem_fk foreign key (id)
    REFERENCES member (id);
