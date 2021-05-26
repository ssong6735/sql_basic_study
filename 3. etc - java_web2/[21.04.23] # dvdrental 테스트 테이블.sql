
-- dvdrental 연습 테이블 생성
CREATE TABLE jdbc_practice (
    id NUMBER(10) PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    addr VARCHAR2(50)
);

-- INSERT, UPDATE, DELETE, SELECT는 자바에서 실행

SELECT * FROM jdbc_practice;

SELECT COUNT(*) AS cnt FROM jdbc_practice;