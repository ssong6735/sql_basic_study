

-- OUTER JOIN �߰� ����
SELECT * FROM job_history ORDER BY employee_id; -- ���� ���� �̷�

-- ��� ��� ������ ��ȸ, ����� ���� �����̷��� �ִٸ� �ش� ������ ���� ��ȸ

-- ���������̷��� 1���̶� �ִ� ������� ��ȸ
SELECT
    E.employee_id, E.first_name, E.hire_date, E.job_id AS "current_job_id",
    J.start_date, J.end_date, J.job_id AS "last_job_id", J.department_id
FROM employees E
JOIN job_history J
ON E.employee_id = J.employee_id
ORDER BY J.employee_id
;

SELECT
    E.employee_id, E.first_name, E.hire_date, E.job_id AS "current_job_id",
    J.start_date, J.end_date, J.job_id AS "last_job_id", J.department_id
FROM employees E
LEFT OUTER JOIN job_history J
ON E.employee_id = J.employee_id
ORDER BY E.employee_id
;


SELECT * FROM job_history;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM locations;
SELECT * FROM jobs;

-- �ǽ����� (JOIN)
-- 1. �����ȣ�� 103���� ����� �̸�(employee_name)�� �Ŵ��� �̸�(manager_name)�� ����ϼ���.
SELECT
    E.first_name AS employee_name,
    M.first_name AS manager_name
FROM employees E, employees M
WHERE E.manager_id = M.employee_id
    AND E.employee_id = 103;
    
SELECT
    E.first_name AS employee_name,
    M.first_name AS manager_name
FROM employees E
JOIN employees M
ON E.manager_id = M.employee_id
WHERE E.employee_id = 103;


-- 2. ��� ����� first_name�� department_name, 
--    street_address + ',' + city + ',' + state_province�� address��� alias�� ��ȸ�ϼ���.
-- employees, departments, locations 3�� ����
SELECT
    E.first_name, D.department_name,
    L.street_address || ', ' || L.city || ', ' || L.state_province AS address
FROM employees E
JOIN departments D
ON E.department_id = D.department_id
JOIN locations L
ON D.location_id = L.location_id
;



-- 3. 103�� ����� first_name�� department_name, 
--    street_address + ',' + city + ',' + state_province�� address��� alias�� 
--    �����Ͽ� ��ȸ�ϼ���.
SELECT
    E.first_name, D.department_name,
    L.street_address || ', ' || L.city || ', ' || L.state_province AS address
FROM employees E
JOIN departments D
ON E.department_id = D.department_id
JOIN locations L
ON D.location_id = L.location_id
WHERE E.employee_id = '103'
;


-- 4. �μ� �̸��� IT�� �����ϴ� ����� first_name�� department_name, 
--    street_address + ',' + city + ',' + state_province�� address��� alias�� 
--    �����Ͽ� ��ȸ�ϼ���.
SELECT
    E.first_name, D.department_name,
    L.street_address || ', ' || L.city || ', ' || L.state_province AS address
FROM employees E
JOIN departments D
ON E.department_id = D.department_id
JOIN locations L
ON D.location_id = L.location_id
WHERE E.job_id LIKE 'IT%'
;


-- 5. jobs���̺��� ��� ���� id(job_id)�� ������(job_title)�� ��ȸ�ϴµ� 
--    ���� �������� �̷��� �ִٸ� �ش� �̷� ���� 
-- (start_date, end_date, job_id, employee_id, first_name, department_id, department_name)
--    �� �Բ� ��ȸ�ϼ���.
SELECT
    J.job_id AS id, J.job_title AS ������,
    H.start_date, H.end_date, H.job_id,
    H.employee_id, E.first_name, E.department_id,
    D.department_name
FROM jobs J
LEFT OUTER JOIN job_history H
ON J.job_id = H.job_id
LEFT OUTER JOIN employees E
ON H.employee_id = E.employee_id
LEFT OUTER JOIN departments D
ON E.department_id = D.department_id
;









