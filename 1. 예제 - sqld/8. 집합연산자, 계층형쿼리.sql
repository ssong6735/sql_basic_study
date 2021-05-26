
-- OUTER JOIN �ǽ� ���� �� ó��
DELETE FROM tb_dept 
WHERE dept_cd IN ('100014', '100015');

DELETE FROM tb_emp 
WHERE emp_no IN ('1000000041', '1000000042', '1000000043', '1000000044', '1000000045');

COMMIT;

ALTER TABLE tb_emp 
ADD CONSTRAINT fk_tb_emp01 
FOREIGN KEY (dept_cd) 
REFERENCES tb_dept (dept_cd);


-- ���� ������ 
-- ## UNION (���̺� ���� ��)
-- 1. ������ ������ �ǹ�
-- 2. ù��° ������ �ι�° ������ �ߺ������� �ѹ��� ǥ��
-- 3. ù��° ������ ���� ������ Ÿ���� �ι�° ������ �� ���� Ÿ�԰� �����ؾ� �Ѵ�.

SELECT emp_no, emp_nm, birth_de
FROM tb_emp
WHERE birth_de BETWEEN '19600101' AND '19691231'
UNION
SELECT emp_no, emp_nm, birth_de
FROM tb_emp
WHERE birth_de BETWEEN '19700101' AND '19791231';

SELECT emp_nm, birth_de
FROM tb_emp
WHERE birth_de BETWEEN '19600101' AND '19691231'
UNION
SELECT emp_nm, birth_de
FROM tb_emp
WHERE birth_de BETWEEN '19700101' AND '19791231';


-- ## UNION ALL
-- 1. UNION�� ���� �� ���̺�� �������� ���ļ� �����ش�.
-- 2. UNION���� �޸� �ߺ��� �����͵� �ѹ� �� �����ش�.
-- 3. �ڵ� ���� ����� �������� �ʾ� ���ɻ� ����

SELECT emp_no, emp_nm, birth_de
FROM tb_emp
WHERE birth_de BETWEEN '19600101' AND '19691231'
UNION ALL
SELECT emp_no, emp_nm, birth_de
FROM tb_emp
WHERE birth_de BETWEEN '19700101' AND '19791231';

SELECT emp_nm, birth_de
FROM tb_emp
WHERE birth_de BETWEEN '19600101' AND '19691231'
UNION ALL
SELECT emp_nm, birth_de
FROM tb_emp
WHERE birth_de BETWEEN '19700101' AND '19791231';

-- ## INTERSECT
-- 1. ù��° ������ �ι�° �������� �ߺ��� �ุ�� ���
-- 2. �������� �ǹ�

SELECT
    A.emp_no, A.emp_nm, A.addr
    , B.certi_cd, C.certi_nm
FROM tb_emp A
JOIN tb_emp_certi B
ON A.emp_no = B.emp_no
JOIN tb_certi C
ON B.certi_cd = C.certi_cd
WHERE C.certi_nm = 'SQLD'
INTERSECT
SELECT
    A.emp_no, A.emp_nm, A.addr
    , B.certi_cd, C.certi_nm
FROM tb_emp A
JOIN tb_emp_certi B
ON A.emp_no = B.emp_no
JOIN tb_certi C
ON B.certi_cd = C.certi_cd
WHERE A.addr LIKE '%����%';

SELECT
    A.emp_no, A.emp_nm, A.addr
    , B.certi_cd, C.certi_nm
FROM tb_emp A
JOIN tb_emp_certi B
ON A.emp_no = B.emp_no
JOIN tb_certi C
ON B.certi_cd = C.certi_cd
WHERE A.addr LIKE '%����%'
    AND C.certi_nm = 'SQLD';


-- ## MINUS(EXCEPT): ����Ŭ�� MINUS ������ SQL�� EXCEPT ���
-- 1. �ι�° �������� ���� ù��° �������� �ִ� �����͸� �����ش�.
-- 2. �������� ����

SELECT emp_no, emp_nm, sex_cd, dept_cd FROM tb_emp
MINUS
SELECT emp_no, emp_nm, sex_cd, dept_cd FROM tb_emp WHERE dept_cd = '100001'
MINUS
SELECT emp_no, emp_nm, sex_cd, dept_cd FROM tb_emp WHERE dept_cd = '100004'
MINUS
SELECT emp_no, emp_nm, sex_cd, dept_cd FROM tb_emp WHERE sex_cd = '1';


-- ������ ����
SELECT 
    LEVEL AS LVL,
    LPAD(' ', 4*(LEVEL-1)) || emp_no || '(' || emp_nm || ')' AS "�����ο�",
    A.dept_cd,
    B.dept_nm,
    A.emp_no,
    A.direct_manager_emp_no,
    CONNECT_BY_ISLEAF -- �������: �ڽĳ�尡 ���� ���(1), �ڽ��� ������(0)
FROM tb_emp A
JOIN tb_dept B
ON A.dept_cd = B.dept_cd
START WITH A.direct_manager_emp_no IS NULL
CONNECT BY PRIOR A.emp_no = A.direct_manager_emp_no;

SELECT 
    LEVEL AS LVL,
    LPAD(' ', 4*(LEVEL-1)) || emp_no || '(' || emp_nm || ')' AS "�����ο�",
    A.dept_cd,
    B.dept_nm,
    A.emp_no,
    A.direct_manager_emp_no
FROM tb_emp A
JOIN tb_dept B
ON A.dept_cd = B.dept_cd
START WITH A.direct_manager_emp_no ='1000000037'
CONNECT BY A.emp_no = PRIOR A.direct_manager_emp_no;







