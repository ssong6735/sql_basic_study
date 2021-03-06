
-- SELECT 기본
SELECT 
    certi_cd, certi_nm
FROM tb_certi;

SELECT * FROM tb_certi;

-- DISTINCT: 중복 값 제외 조회
SELECT DISTINCT
    issue_insti_nm
FROM tb_certi;

-- 별칭(ALIAS) 지정 (띄어쓰기가 없으면 "" 생략가능)
SELECT
    certi_cd AS "자격증코드",
    certi_nm AS "자격증이름",
    issue_insti_nm AS "발급기관명"
FROM tb_certi;

-- 결합연산자 (||)을 통한 컬럼 데이터 결합
SELECT
    certi_nm || '(' || certi_cd || ') - ' || issue_insti_nm AS "자격증 정보"
FROM tb_certi;

-- 더미 테이블(DUAL): 단순 연산결과를 조회하고 싶을 때
SELECT
    (3+7)*5/10 AS "연산결과"
FROM dual;


-- # WHERE절: 조회 결과 행을 제한하는 조건절
SELECT * FROM tb_emp;

SELECT
    emp_nm, addr, tel_no
FROM tb_emp
WHERE sex_cd = 2;

-- PK로 데이터를 조회하면 무조건 단일행이 조회됩니다.
SELECT
    emp_no, emp_nm, addr
FROM tb_emp
WHERE emp_no = 1000000001;

-- 비교연산자 (=, <>, <, <=, >, >=)
-- SQL 비교연산자 (BETWEEN, IN, LIKE)

-- 90년대생만 조회
SELECT
    emp_no, emp_nm, birth_de, tel_no
FROM tb_emp
WHERE birth_de >= '19900101' AND birth_de <= '19991231';

-- BETWEEN 연산자
SELECT
    emp_no, emp_nm, birth_de, tel_no
FROM tb_emp
WHERE birth_de BETWEEN '19900101' AND '19991231';

-- IN 연산자
SELECT
    emp_no, emp_nm, dept_cd
FROM tb_emp
WHERE dept_cd = '100004'
    OR dept_cd = '100006';
    
SELECT
    emp_no, emp_nm, dept_cd
FROM tb_emp
WHERE dept_cd IN ('100004', '100006');

SELECT
    emp_no, emp_nm, dept_cd
FROM tb_emp
WHERE dept_cd NOT IN ('100004', '100006');

-- LIKE 연산자
-- 와일드카드 매핑 (1. % : 1글자이상 포함, 2. _ : 딱 1글자 포함)
SELECT
    emp_no, emp_nm
FROM tb_emp
WHERE emp_nm LIKE '이%';

SELECT
    emp_no, emp_nm
FROM tb_emp
WHERE emp_nm LIKE '%심';

SELECT
    emp_no, emp_nm
FROM tb_emp
WHERE emp_nm LIKE '이__';

-- 성씨가 김씨 이면서, 부서가 100003, 100004, 100006번 중에 하나 이면서,
-- 90년대생인 사원의 사번, 이름, 생일, 부서코드를 조회

SELECT
    emp_no, emp_nm, birth_de, dept_cd
FROM tb_emp
WHERE emp_nm LIKE '김%'
    AND dept_cd IN ('100003', '100004', '100006')
    AND birth_de BETWEEN '19900101' AND '19991231';
    
-- NULL값 조회
SELECT
    emp_no, emp_nm, direct_manager_emp_no
FROM tb_emp
-- WHERE direct_manager_emp_no = NULL; -- NULL은 IS로만 비교
WHERE direct_manager_emp_no IS NULL;

SELECT
    emp_no, emp_nm, direct_manager_emp_no
FROM tb_emp
WHERE direct_manager_emp_no IS NOT NULL; -- NULL이 아닌것 (NOT은 꼭 IS 뒤에 붙인다)

-- AND와 OR의 우선순위
SELECT
    emp_no, emp_nm, addr, dept_cd
FROM tb_emp
WHERE emp_nm LIKE '이%'
    AND dept_cd IN ('100004', '100006')
    AND addr LIKE '%수원%' OR addr LIKE '%성남%';
--  AND (addr LIKE '%수원%' OR addr LIKE '%성남%');
-- OR에 ()를 넣어서 먼저 연산하게 한다.

SELECT
    emp_no, emp_nm, addr, dept_cd
FROM tb_emp
WHERE emp_nm LIKE '이%'
    AND dept_cd IN ('100004', '100006')
    AND NOT (addr LIKE '%수원%' OR addr LIKE '%성남%');
    
-- 부정 비교연산자 (!=, <>, ^=, NOT 컬럼명) - 다 똑같은데 실무에서는 <>를 주로 쓴다.
SELECT
    emp_no, emp_nm, sex_cd, dept_cd
FROM tb_emp
WHERE emp_nm LIKE '이%'
    AND dept_cd IN ('100004', '100006')
    AND sex_cd <> '1';
    




    
    





