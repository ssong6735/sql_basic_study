
-- JOIN 기초


-- 크로스조인(카티시안 프로덕션): 조인 조건이 없음. 41행, 14행 => 41*14 = 574
SELECT
    emp_no, emp_nm, tb_emp.dept_cd, dept_nm -- JOIN 시 중복되는 컬럼에 테이블명 같이 써준다.
FROM tb_emp, tb_dept; 

SELECT
    dept_cd, dept_nm
FROM tb_dept;

-- EQUI(=) JOIN
SELECT
    emp_no, emp_nm, A.dept_cd, dept_nm 
FROM tb_emp A, tb_dept B
WHERE A.dept_cd = B.dept_cd;


-- 자격증 정보 테이블
SELECT * FROM tb_certi;
-- 회원이 취득한 자격증 정보 테이블
SELECT * FROM tb_emp_certi;
-- 사원 정보 테이블
SELECT * FROM tb_emp;


-- 사원번호, 사원명, 취득일, 취득자격증 코드번호
SELECT
    a.emp_no, a.emp_nm, b.acqu_de, b.certi_cd, c.certi_nm
FROM tb_emp A, tb_emp_certi B, tb_certi C
WHERE a.emp_no = b.emp_no -- JOIN 조건1
    AND b.certi_cd = c.certi_cd -- JOIN 조건2
    AND b.acqu_de BETWEEN '20190101' AND '20191231' -- 분기 조건1
    AND a.emp_nm LIKE '이%' -- 분기 조건2
;

-- JOIN 테이블수(n), JOIN 조건수(n-1)

-- JOIN 테이블 4, JOIN 조건 3
SELECT
    a.emp_no, a.emp_nm, d.dept_nm, b.acqu_de, b.certi_cd, c.certi_nm
FROM tb_emp A, tb_emp_certi B, tb_certi C, tb_dept D
WHERE a.emp_no = b.emp_no
    AND b.certi_cd = c.certi_cd
    AND a.dept_cd = d.dept_cd
;


-- # INNER JOIN
-- 1. 2개 이상의 테이블이 공통된 컬럼에 의해 논리적으로 결합되는 조인기법
-- 2. WHERE절에 사용된 컬럼들이 동등연산자(=)에 의해 조인

SELECT
    E.emp_no, E.emp_nm, E.addr, D.dept_cd, D.dept_nm
FROM tb_emp E, tb_dept D
WHERE E.dept_cd = D.dept_cd
    AND E.addr LIKE '%용인%'
ORDER BY E.emp_no
;

SELECT
    *
FROM tb_emp E, tb_dept D
WHERE E.dept_cd = D.dept_cd
    AND E.addr LIKE '%용인%'
ORDER BY E.emp_no
;


-- # NATURAL JOIN
-- 1. NATURAL JOIN은 동일한 이름을 갖는 컬럼들에 대해 자동 조인하는 기법
-- 2. 즉, 자동으로 2개 이상의 테이블에서 같은 이름을 가진 컬럼을 찾아 INNER조인을 수행
-- 3. 이때 조인되는 동일 이름의 컬럼은 데이터 타입이 같아야 하며, ALIAS나 테이블명을 붙일 수 없다.
-- 4. SELECT * 문법을 사용하면, 공통 컬럼으로 자동 조인하며, 결과집합에서 한번만 표기
-- * 동일한 이름의 컬럼이 2개 이상일때 두개의 값이 다 만족해야 조회됨

SELECT
    e.emp_no, e.emp_nm, e.addr, dept_cd, d.dept_nm -- dept_cd는 별칭, 테이블명 붙이면 에러
FROM tb_emp E NATURAL JOIN tb_dept D
;

SELECT
    *
FROM tb_emp E NATURAL JOIN tb_dept D
;


-- # USING절 조인
-- 1. NATURAL 조인에서는 자동으로 이름이 일치하는 모든 컬럼에 대해 조인이 일어나지만
--    USING을 사용하면 원하는 컬럼에 대해서만 선택적으로 조인이 가능 (위에 *주석 대안)
-- 2. USING절에서도 조인 컬럼에 대해 ALIAS나 테이블명을 붙일수 없다.

SELECT
    E.emp_no, E.emp_nm, E.addr, dept_cd, D.dept_nm
FROM tb_emp E JOIN tb_dept D USING (dept_cd)
;


-- # JOIN ON절 (INNER JOIN 표준) : 조인 조건을 따로 쓴다.  FROM 밑 WHERE 위
-- 1. 조인 조건 서술부(ON절)와 일반 조건 서술부(WHERE절)를 분리해서 작성하는 방법
-- 2. ON절을 사용하면 JOIN이후에 논리연산이나 서브쿼리와 같은 추가 서술 가능

SELECT
    E.emp_no, E.emp_nm, E.addr, D.dept_cd, D.dept_nm
FROM tb_emp E 
JOIN tb_dept D -- JOIN 앞에 INNER가 숨어있음 (생략가능)
ON E.dept_cd = D.dept_cd
WHERE E.addr LIKE '%용인%'
ORDER BY E.emp_no
;


-- # 구문 나열 순서 (GROUP BY, HAVING은 순서가 바뀌어도 됨)
-- SELECT [DISTINCT] { 열이름 .... } 
-- FROM  테이블 또는 뷰 이름
-- JOIN  테이블 또는 뷰 이름
-- ON    조인 조건
-- WHERE 조회 조건
-- GROUP BY  열을 그룹화
-- HAVING    그룹화 조건
-- ORDER BY  정렬할 열 [ASC | DESC];







