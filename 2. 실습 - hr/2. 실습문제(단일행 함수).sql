
SELECT first_name FROM employees;

SELECT
    first_name, last_name
FROM employees
WHERE LOWER(first_name) = 'david';


-- # �ǽ����� 
-- 1. employees ���̺��� ��� ����� first_name�� first_name�� ���� ���� ��ȸ�ϼ���.
SELECT
    first_name,
    LENGTH(first_name)
FROM employees;


-- 2. employees ���̺��� first_name�� last_name�� �� ���� ������ �̸��� ��ȸ�ϼ���.
SELECT
    CONCAT(first_name, last_name)
FROM employees;

-- 3. employees ���̺��� job_id�� it_prog�� ����� first_name�� salary�� ����ϼ���.
--  ����1 ) ���ϱ� ���� ���� �ҹ��ڷ� �Է��� ��!
--  ����2 ) �̸��� �� 3���ڱ����� ����ϰ� �������� *�� ��ŷ�� ��. �� ���� ��Ī�� name�Դϴ�.
--  ����3 ) �޿��� ��ü 10�ڸ��� ����ϵ� �������ڸ��� *�� ����մϴ�. �� ���� ��Ī�� salary�Դϴ�.
SELECT
    RPAD(SUBSTR(first_name, 1, 3), LENGTH(first_name), '*') AS "name",
    LPAD(salary, 10, '*') AS "salary"
FROM employees
WHERE LOWER(job_id) = 'it_prog'
;






