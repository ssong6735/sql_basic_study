
SELECT
--  emp_no, (GROUP BY�� ��� ����)
    SUM(PAY_amt) AS �ѱ޿����Ҿ�
FROM tb_sal_his
HAVING AVG(pay_amt) > 4000000
;


-- 56�� ����Ǯ��
CREATE TABLE ����������_56 (
    ���� VARCHAR2(50),
    ����ݾ� NUMBER(10),
    �� VARCHAR2(10)
);

INSERT INTO ����������_56 VALUES('����', 500, '2018');
INSERT INTO ����������_56 VALUES('����', 700, '2019');
INSERT INTO ����������_56 VALUES('����', 1000, '2020');

INSERT INTO ����������_56 VALUES('����', 300, '2019');
INSERT INTO ����������_56 VALUES('����', 600, '2020');

INSERT INTO ����������_56 VALUES('�λ�', 400, '2020');
INSERT INTO ����������_56 VALUES('�λ�', 800, '2021');

COMMIT;

SELECT * FROM ����������_56;

-- 1�� ����
SELECT ����, SUM(����ݾ�) AS ����ݾ�
FROM ����������_56
GROUP BY ����
ORDER BY ����ݾ� DESC;

-- 2�� ����
SELECT ����, ����ݾ�
FROM ����������_56
ORDER BY �� ASC;

-- 3�� ����
SELECT ����, SUM(����ݾ�) AS ����ݾ�
FROM ����������_56
GROUP BY ����
ORDER BY �� DESC;

-- 4�� ����
SELECT ����, SUM(����ݾ�) AS ����ݾ�
FROM ����������_56
GROUP BY ����
HAVING SUM(����ݾ�) > 1000
ORDER BY COUNT(*) ASC;










