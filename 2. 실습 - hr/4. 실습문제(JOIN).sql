SELECT * FROM employees;
SELECT * FROM departments;

-- # 실습 문제

-- 1. employees, departments테이블을 INNER JOIN해서
--    first_name, department_id, department_name을 조회하세요.
SELECT
    A.first_name, A.department_id, B.department_name
FROM employees A, departments B
WHERE A.department_id = B.department_id
ORDER BY a.employee_id
;
-- 결과 출력행 106

SELECT 
    E.first_name, E.department_id, D.department_name
FROM employees E, departments D
WHERE E.department_id = D.department_id
    AND E.manager_id = D.manager_id
ORDER BY E.employee_id;
-- 결과 출력행 32 : NATURAL 조인과 같은 결과값


-- 2. employees, departments테이블을 NATURAL JOIN해서
--    first_name, department_id, department_name을 조회하세요.
SELECT
    A.first_name, department_id, B.department_name
FROM employees A NATURAL JOIN departments B
ORDER BY a.employee_id
;
-- 결과 출력행 32 : 같은이름의 컬럼이 여러개임. department_id, manager_id 도 같이 만족해야 출력

SELECT
    A.first_name, department_id, B.department_name
FROM employees A JOIN departments B USING (department_id)
ORDER BY a.employee_id
;
-- 결과 출력행 106 : INNER 조인과 같은 결과값

SELECT
    A.first_name, department_id, B.department_name
FROM employees A JOIN departments B USING (department_id, manager_id)
ORDER BY a.employee_id
;
-- 결과 출력행 32 : NATURAL 조인과 같은 결과값


-- 3. employees, departments테이블을 JOIN ON을 사용해서
--    first_name, department_id, department_name을 조회하세요.
SELECT
    A.first_name, A.department_id, B.department_name
FROM employees A
JOIN departments B
ON A.department_id = B.department_id
;




