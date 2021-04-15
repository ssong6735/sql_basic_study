
SELECT
--  emp_no, (GROUP BY가 없어서 오류)
    SUM(PAY_amt) AS 총급여지불액
FROM tb_sal_his
HAVING AVG(pay_amt) > 4000000
;


-- 56번 문제풀이
CREATE TABLE 지역별매출_56 (
    지역 VARCHAR2(50),
    매출금액 NUMBER(10),
    년 VARCHAR2(10)
);

INSERT INTO 지역별매출_56 VALUES('서울', 500, '2018');
INSERT INTO 지역별매출_56 VALUES('서울', 700, '2019');
INSERT INTO 지역별매출_56 VALUES('서울', 1000, '2020');

INSERT INTO 지역별매출_56 VALUES('대전', 300, '2019');
INSERT INTO 지역별매출_56 VALUES('대전', 600, '2020');

INSERT INTO 지역별매출_56 VALUES('부산', 400, '2020');
INSERT INTO 지역별매출_56 VALUES('부산', 800, '2021');

COMMIT;

SELECT * FROM 지역별매출_56;

-- 1번 보기
SELECT 지역, SUM(매출금액) AS 매출금액
FROM 지역별매출_56
GROUP BY 지역
ORDER BY 매출금액 DESC;

-- 2번 보기
SELECT 지역, 매출금액
FROM 지역별매출_56
ORDER BY 년 ASC;

-- 3번 보기
SELECT 지역, SUM(매출금액) AS 매출금액
FROM 지역별매출_56
GROUP BY 지역
ORDER BY 년 DESC;

-- 4번 보기
SELECT 지역, SUM(매출금액) AS 매출금액
FROM 지역별매출_56
GROUP BY 지역
HAVING SUM(매출금액) > 1000
ORDER BY COUNT(*) ASC;










