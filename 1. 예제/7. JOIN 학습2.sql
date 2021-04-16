
SELECT
    COUNT(*)
FROM tb_emp A, tb_dept B, tb_emp_certi C;


-- 3���� ���̺� ����
-- INNER JOIN
SELECT
    A.emp_no, A.emp_nm, A.addr,
    B.dept_cd, B.dept_nm, C.certi_cd
FROM tb_emp A, tb_dept B, tb_emp_certi C
WHERE A.dept_cd = B.dept_cd
    AND A.emp_no = C.emp_no
    AND (B.dept_nm = '������' OR B.dept_nm = '�����')
    AND A.addr like '%���%'
;

-- JOIN ON��
SELECT
    A.emp_no, A.emp_nm, A.addr,
    B.dept_cd, B.dept_nm, C.certi_cd
FROM tb_emp A 
JOIN tb_dept B 
ON A.dept_cd = B.dept_cd
JOIN tb_emp_certi C 
ON A.emp_no = C.emp_no
WHERE (B.dept_nm = '������' OR B.dept_nm = '�����')
    AND A.addr like '%���%'
;


-- 4�� ���̺� ����
-- JOIN ON��
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
WHERE (B.dept_nm = '������' OR B.dept_nm = '�����')
    AND A.addr like '%���%'
;


-- # SELF JOIN
-- 1. SELF JOIN�� �ڱ� �ڽ� ���̺��� ����
-- 2. �ڱ� ���̺��� �÷����� ��Ī�Ͽ� ��ȸ

SELECT
    A.emp_no, A.emp_nm,
    A.direct_manager_emp_no,
    B.emp_nm AS "����̸�"
FROM tb_emp A
JOIN tb_emp B
ON A.direct_manager_emp_no = B.emp_no
WHERE A.emp_nm = '�質��'
ORDER BY A.emp_no
;



-- OUTER JOIN �ǽ�ȯ�� ����
INSERT INTO tb_dept VALUES ('100014', '4�����������', '999999');
INSERT INTO tb_dept VALUES ('100015', '����Ʈ�ڷγ���', '999999');
COMMIT;

SELECT * FROM tb_dept;

ALTER TABLE tb_emp DROP CONSTRAINT fk_tb_emp01; -- emp ���̺�� dept ���̺� ���� ���� (�μ��� null�� ������)

INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
                    final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000041', '�̼���', '19811201', '1', '��⵵ ���ν� ������ ����1�� 435', '010-5656-7878',
        NULL, '006', '003', '114-554-223433', '000000', 'N');

INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
                    final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000042', '�����', '19820402', '1', '��⵵ ���� ���籸 ȭ���� 231', '010-4054-6547',
        NULL, '004', '001', '110-223-553453', '000000', 'Y');

INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
                    final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000043', '������', '19850611', '1', '��⵵ ������ �ȴޱ� ��ź�� 553', '010-1254-1116',
        NULL, '004', '001', '100-233-664234', '000000', 'N');
        
INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
            final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000044', '�庸��', '19870102', '1', '��⵵ ������ �д籸 ���ڵ� 776', '010-1215-8784',
        NULL, '004', '002', '180-345-556634', '000000', 'Y');
        
INSERT INTO tb_emp (emp_no, emp_nm, birth_de, sex_cd, addr, tel_no, direct_manager_emp_no, 
            final_edu_se_cd, sal_trans_bank_cd, sal_trans_accnt_no, dept_cd, lunar_yn)
VALUES ('1000000045', '������', '19880824', '1', '��⵵ ���� �ϻ꼭�� �鼮�� 474', '010-3687-1245',
        NULL, '004', '002', '325-344-45345', '000000', 'Y');
        
COMMIT;
    
 
SELECT * FROM tb_emp ORDER BY emp_no DESC;

SELECT * FROM tb_dept;


-- # OUTER JOIN
-- 1. ���� ������ �������� �ʴ� ��鵵 ��ȸ�Ҷ� ����ϴ� ���α��
-- 2. OUTER ���� ������ ��ȣ: (+)��ȣ
-- 3. INNER ������ ���������� �������� ������ �ش� ���� ��ȸ���� ����
--    �׷��� OUTER JOIN�� ����(LEFT, RIGHT, FULL)�� �°� ���ǿ� ��Ī���� �ʴ�
--    ��鵵 ��� NULL�� ó���ؼ� ��ȸ


-- # LEFT OUTER JOIN
-- ���εǴ� ���� ���̺��� ��� ��ȸ�ϰ�, ������ ���̺��� �������ǿ� ��Ī�� �͸� ��ȸ
-- LEFT �ϰ������ �����ʿ� (+)

-- ��������� �ϴ� �� ��������� Ȥ�� �μ����̺��� �μ��ڵ尡 ��Ī�Ǹ� ���ʽ��� �μ��̸��� ����ض�
-- OUTER JOIN �⺻
SELECT
    A.emp_no, A.emp_nm, A.dept_cd, B.dept_nm
FROM tb_emp A, tb_dept B
WHERE A.dept_cd = B.dept_cd (+)
;


-- JOIN ON���� OUTER JOIN
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
-- ���εǴ� ������ ���̺��� ��� ��ȸ�ϰ�, ���� ���̺��� �������ǿ� ��Ī�� �͸� ��ȸ
-- RIGHT �ϰ������ ���ʿ� (+)

-- OUTER JOIN �⺻
SELECT
    A.emp_no, A.emp_nm, B.dept_cd, B.dept_nm
FROM tb_emp A, tb_dept B
WHERE A.dept_cd (+) = B.dept_cd 
;

-- JOIN ON���� OUTER JOIN
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


-- FULL OUTER JOIN: ���� ������ �� �����ְ� ��ġ�ϴ°� ������ NULL
SELECT
    A.emp_no, A.emp_nm, B.dept_cd, B.dept_nm
FROM tb_emp A
FULL OUTER JOIN tb_dept B
ON A.dept_cd = B.dept_cd 
;























