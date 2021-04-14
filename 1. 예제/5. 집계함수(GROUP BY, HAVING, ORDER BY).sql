
-- # GROUP BY, HAVING절
-- 1. 집계 함수: 전체 행을 대상으로 집계(NULL을 제외) COUNT(*): NULL 포함 집계
SELECT
    COUNT(emp_no) AS "총 사원수",
    MAX(birth_de) AS "가장 어린 사람",
    MIN(birth_de) AS "가장 나이 많은 사람"    
FROM tb_emp;

SELECT * FROM tb_emp;

-- NULL 포함 여부
SELECT
    COUNT(*),
    COUNT(direct_manager_emp_no)
FROM tb_emp;

SELECT * FROM tb_sal_his;


-- 2. GROUP BY

-- 부서별로 가장 어린사람의 생년월일, 가장 연장자의 생년월일, 부서별 총 직원수를 알고싶다.
SELECT birth_de, dept_cd FROM tb_emp;

SELECT
    dept_cd,
    COUNT(*) AS "부서별 직원수",
    MAX(birth_de) AS "가장 어린 사람",
    MIN(birth_de) AS "부서의 연장자"
FROM tb_emp
GROUP BY dept_cd -- (DISTINCT 같은 중복없는) 그룹화
ORDER BY dept_cd;


-- HAVING절: 그룹화 된 결과에서 조건을 걸어서 행 수 제한

SELECT
    A.dept_cd,
    (SELECT B.dept_nm FROM tb_dept B WHERE A.dept_cd = B.dept_cd) AS emp_nm,
    COUNT(*) AS "부서별 직원수",
    MAX(A.birth_de) AS "가장 어린 사람",
    MIN(A.birth_de) AS "부서의 연장자"
FROM tb_emp A
GROUP BY A.dept_cd
HAVING COUNT(*) > 1 -- 그룹화가 끝난 결과에서 조건걸기
ORDER BY A.dept_cd;

-- 사원별로 급여를 제일 많이 받은 액수, 제일 적게 받은 액수, 평균액수 조회
SELECT emp_no, pay_amt, pay_de
FROM tb_sal_his
ORDER BY emp_no, pay_de;

-- WHERE: 그룹화 전 조건, HAVING: 그룹화 후 조건
SELECT
    A.emp_no,
    (SELECT B.emp_nm FROM tb_emp B WHERE A.emp_no = B.emp_no) AS emp_nm,
    ROUND(AVG(A.pay_amt), 2) AS "평균 급여",
    MAX(A.pay_amt) AS "최고 수령액",
    MIN(A.pay_amt) AS "최저 수령액"
FROM tb_sal_his A
WHERE a.pay_de BETWEEN '20190101' AND '20191231'
GROUP BY A.emp_no
HAVING AVG(A.pay_amt) >= 4700000
ORDER BY A.emp_no;

-- 사원별 2019년 사원번호와 사원이름, 연봉을 조회
-- 추가조건 연봉이 5천 이상
SELECT
    A.emp_no AS "사원번호",
    (SELECT B.emp_nm FROM tb_emp B WHERE A.emp_no = B.emp_no) AS "사원이름",
    --SUM(A.pay_amt) AS "연봉"
    TO_CHAR(SUM(A.pay_amt), 'L999,999,999') AS "연봉"
FROM tb_sal_his A
WHERE A.pay_de BETWEEN '20190101' AND '20191231'
GROUP BY A.emp_no
HAVING SUM(A.pay_amt) >= 50000000
ORDER BY A.emp_no;


-- 정렬 ORDER BY
-- ASC: 오름차(기본값=생략가능), DESC 내림차

SELECT emp_no, emp_nm, addr
FROM tb_emp
ORDER BY emp_no DESC;

SELECT emp_no, emp_nm, addr
FROM tb_emp
ORDER BY emp_nm DESC;

SELECT emp_no, emp_nm, addr
FROM tb_emp
ORDER BY 2 DESC; -- 컬럼 순서로 정렬 가능

SELECT emp_no, emp_nm, addr
FROM tb_emp
--ORDER BY emp_nm DESC, emp_no; -- 1차 정렬하고 같은게 있으면 2차 정렬
ORDER BY 2 DESC, 1;

SELECT emp_no AS en, emp_nm AS em, addr
FROM tb_emp
ORDER BY em DESC; -- 별칭으로 정렬 가능









