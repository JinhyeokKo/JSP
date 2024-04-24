create sequence seq_board_num
    increment by 1 /* 1씩 증가 */
    start with 1 /* 시작값 1 */
    minvalue 1 /* 최솟값 1 */
    nomaxvalue /* 최댓값은 무한대 */
    nocycle /* 순환하지 않음 */
    nocache; /* 캐시 안 함 */