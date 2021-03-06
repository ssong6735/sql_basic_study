
SELECT
    COUNT(*)
FROM tb_emp A, tb_dept B, tb_emp_certi C;


-- 3개의 테이블 조인
-- INNER JOIN
SELECT
    A.emp_no, A.emp_nm, A.addr,
    B.dept_cd, B.dept_nm, C.certi_cd
FROM tb_emp A, tb_dept B, tb_emp_certi C
WHERE A.dept_cd = B.dept_cd
    AND A.emp_no = C.emp_no
    AND (B.dept_nm = '지원팀' OR B.dept_nm = '운영본부')
    AND A.addr like '%고양%'
;

-- JOIN ON절
SELECT
    A.emp_no, A.emp_nm, A.addr,
    B.dept_cd, B.dept_nm, C.certi_cd
FROM tb_emp A 
JOIN tb_dept B 
ON A.dept_cd = B.dept_cd
JOIN tb_emp_certi C 
ON A.emp_no = C.emp_no
WHERE (B.dept_nm = '지원팀' OR B.dept_nm = '운영본부')
    AND A.addr like '%고양%'
;


-- 4개 테이블 조인
-- JOIN ON절
SELECT
    A.emp_no, A.emp_nm, A.addr,
    B.dept_cd, B.dept_nm, C.certi_cd, D.certi_nm
FROM tb_emp A 
JOIN tb_dept B 
ON A.dept_cd = B.dept_cd
JOIN tb_emp_certi C 
ON A.emp_no = C.emp_no
JOIN tb_certi D
ON C.certi_cd = D.certi_cd
WHERE (B.dept_nm = '지원팀' OR B.dept_nm = '운영본부')
    AND A.addr like '%고양%'
;


-- # SELF JOIN
-- 1. SELF JOIN은 자기 자신 테이블을 조인
-- 2. 자기 테이블의 컬럼들을 매칭하여 조회

SELECT
    A.emp_no, A.emp_nm,
    A.direct_manager_emp_no,
    B.emp_nm AS "상사이름"
FROM tb_emp A
JOIN tb_emp B
ON A.direct_manager_emp_no = B.emp_no
WHERE A.emp_nm = '김나라'
ORDER BY A.emp_no
;



-- OUTER JOIN 실습환경 세팅
INSERT INTO tb_dept VALUES ('100014', '4차산업혁명팀', '999999');
INSERT INTO tb_dept VALUES ('100015', '포스트코로나팀', '999999');
COMMIT;

SELECT * FROM tb_dept;

ALTER TABLE tb_emp DROP CONSTRAINT fk_tb_emp01; -- emp 테이블과 dept 테이블 관계 끊기 (부서에 null이 들어가도록)

INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
                    final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000041', '이순신', '19811201', '1', '경기도 용인시 수지구 죽전1동 435', '010-5656-7878',
        NULL, '006', '003', '114-554-223433', '000000', 'N');

INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
                    final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000042', '정약용', '19820402', '1', '경기도 고양시 덕양구 화정동 231', '010-4054-6547',
        NULL, '004', '001', '110-223-553453', '000000', 'Y');

INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
                    final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000043', '박지원', '19850611', '1', '경기도 수원시 팔달구 매탄동 553', '010-1254-1116',
        NULL, '004', '001', '100-233-664234', '000000', 'N');
        
INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
            final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000044', '장보고', '19870102', '1', '경기도 성남시 분당구 정자동 776', '010-1215-8784',
        NULL, '004', '002', '180-345-556634', '000000', 'Y');
        
INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
            final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000045', '김종서', '19880824', '1', '경기도 고양시 일산서구 백석동 474', '010-3687-1245',
        NULL, '004', '002', '325-344-45345', '000000', 'Y');
        
COMMIT;
    
 
SELECT * FROM tb_emp ORDER BY emp_no DESC;

SELECT * FROM tb_dept;


-- # OUTER JOIN
-- 1. 조인 조건을 만족하지 않는 행들도 조회할때 사용하는 조인기법
-- 2. OUTER 조인 연산자 기호: (+)기호
-- 3. INNER 조인은 조인조건을 만족하지 않으면 해당 행을 조회하지 않음
--    그러나 OUTER JOIN은 방향(LEFT, RIGHT, FULL)에 맞게 조건에 매칭되지 않는
--    행들도 모두 NULL로 처리해서 조회


-- # LEFT OUTER JOIN
-- 조인되는 왼쪽 테이블은 모두 조회하고, 오른쪽 테이블은 조인조건에 매칭된 것만 조회
-- LEFT 하고싶으면 오른쪽에 (+)

-- 사원정보는 일단 다 보고싶은데 혹시 부서테이블에서 부서코드가 매칭되면 보너스로 부서이름도 출력해라
-- OUTER JOIN 기본
SELECT
    A.emp_no, A.emp_nm, A.dept_cd, B.dept_nm
FROM tb_emp A, tb_dept B
WHERE A.dept_cd = B.dept_cd (+)
;


-- JOIN ON절로 OUTER JOIN
SELECT
    A.emp_no, A.emp_nm, A.dept_cd, B.dept_nm
FROM tb_emp A
JOIN tb_dept B
ON A.dept_cd = B.dept_cd (+) 
;

SELECT
    A.emp_no, A.emp_nm, A.dept_cd, B.dept_nm
FROM tb_emp A
LEFT OUTER JOIN tb_dept B
ON A.dept_cd = B.dept_cd
;

SELECT emp_no, emp_nm, dept_cd FROM tb_emp;


-- # RIGHT OUTER JOIN
-- 조인되는 오른쪽 테이블은 모두 조회하고, 왼쪽 테이블은 조인조건에 매칭된 것만 조회
-- RIGHT 하고싶으면 왼쪽에 (+)

-- OUTER JOIN 기본
SELECT
    A.emp_no, A.emp_nm, B.dept_cd, B.dept_nm
FROM tb_emp A, tb_dept B
WHERE A.dept_cd (+) = B.dept_cd 
;

-- JOIN ON절로 OUTER JOIN
SELECT
    A.emp_no, A.emp_nm, B.dept_cd, B.dept_nm
FROM tb_emp A
JOIN tb_dept B
ON A.dept_cd (+) = B.dept_cd 
;

SELECT
    A.emp_no, A.emp_nm, B.dept_cd, B.dept_nm
FROM tb_emp A
RIGHT OUTER JOIN tb_dept B
ON A.dept_cd = B.dept_cd 
;


-- FULL OUTER JOIN: 왼쪽 오른쪽 다 보여주고 일치하는게 없으면 NULL
SELECT
    A.emp_no, A.emp_nm, B.dept_cd, B.dept_nm
FROM tb_emp A
FULL OUTER JOIN tb_dept B
ON A.dept_cd = B.dept_cd 
;























