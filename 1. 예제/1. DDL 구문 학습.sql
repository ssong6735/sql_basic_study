
-- DDL(데이터 정의어)
-- CREATE TABLE
CREATE TABLE BOARD (
    BNO NUMBER(10),
    TITLE VARCHAR2(200) NOT NULL,
    CONTENT VARCHAR2(3000),
    WRITER VARCHAR2(50) NOT NULL,
    REG_DATE DATE NOT NULL
);

-- PK 설정
ALTER TABLE BOARD ADD CONSTRAINT pk_board_bno PRIMARY KEY (BNO);

-- TABLE 추가
-- 일대다의 경우 다쪽에 FK가 있어야 한다.
CREATE TABLE REPLY (
    REPLY_NO NUMBER(10),
    REPLY_CONTENT VARCHAR2(500) NOT NULL,
    REPLY_WRITER VARCHAR2(50) NOT NULL,
    BNO NUMBER(10)
);

-- PK 설정
ALTER TABLE REPLY ADD CONSTRAINT pk_reply_reply_no PRIMARY KEY (REPLY_NO);

-- FK 설정
ALTER TABLE REPLY ADD CONSTRAINT fk_reply_bno FOREIGN KEY (BNO) REFERENCES BOARD (BNO);

-- 컬럼 변경
ALTER TABLE REPLY ADD (REPLY_REG_DATE DATE NOT NULL);
ALTER TABLE REPLY DROP COLUMN REPLY_REG_DATE;

SELECT * FROM REPLY;



