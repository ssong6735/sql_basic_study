SELECT * FROM employees;
SELECT * FROM departments;

-- # �ǽ� ����

-- 1. employees, departments���̺��� INNER JOIN�ؼ�
--    first_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    A.first_name, A.department_id, B.department_name
FROM employees A, departments B
WHERE A.department_id = B.department_id
ORDER BY a.employee_id
;
-- ��� ����� 106

SELECT 
    E.first_name, E.department_id, D.department_name
FROM employees E, departments D
WHERE E.department_id = D.department_id
    AND E.manager_id = D.manager_id
ORDER BY E.employee_id;
-- ��� ����� 32 : NATURAL ���ΰ� ���� �����


-- 2. employees, departments���̺��� NATURAL JOIN�ؼ�
--    first_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    A.first_name, department_id, B.department_name
FROM employees A NATURAL JOIN departments B
ORDER BY a.employee_id
;
-- ��� ����� 32 : �����̸��� �÷��� ��������. department_id, manager_id �� ���� �����ؾ� ���

SELECT
    A.first_name, department_id, B.department_name
FROM employees A JOIN departments B USING (department_id)
ORDER BY a.employee_id
;
-- ��� ����� 106 : INNER ���ΰ� ���� �����

SELECT
    A.first_name, department_id, B.department_name
FROM employees A JOIN departments B USING (department_id, manager_id)
ORDER BY a.employee_id
;
-- ��� ����� 32 : NATURAL ���ΰ� ���� �����


-- 3. employees, departments���̺��� JOIN ON�� ����ؼ�
--    first_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    A.first_name, A.department_id, B.department_name
FROM employees A
JOIN departments B
ON A.department_id = B.department_id
;




