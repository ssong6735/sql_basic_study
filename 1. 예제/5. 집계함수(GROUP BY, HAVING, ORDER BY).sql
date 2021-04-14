
-- # GROUP BY, HAVING��
-- 1. ���� �Լ�: ��ü ���� ������� ����(NULL�� ����) COUNT(*): NULL ���� ����
SELECT
    COUNT(emp_no) AS "�� �����",
    MAX(birth_de) AS "���� � ���",
    MIN(birth_de) AS "���� ���� ���� ���"    
FROM tb_emp;

SELECT * FROM tb_emp;

-- NULL ���� ����
SELECT
    COUNT(*),
    COUNT(direct_manager_emp_no)
FROM tb_emp;

SELECT * FROM tb_sal_his;


-- 2. GROUP BY

-- �μ����� ���� ������ �������, ���� �������� �������, �μ��� �� �������� �˰�ʹ�.
SELECT birth_de, dept_cd FROM tb_emp;

SELECT
    dept_cd,
    COUNT(*) AS "�μ��� ������",
    MAX(birth_de) AS "���� � ���",
    MIN(birth_de) AS "�μ��� ������"
FROM tb_emp
GROUP BY dept_cd -- (DISTINCT ���� �ߺ�����) �׷�ȭ
ORDER BY dept_cd;


-- HAVING��: �׷�ȭ �� ������� ������ �ɾ �� �� ����

SELECT
    A.dept_cd,
    (SELECT B.dept_nm FROM tb_dept B WHERE A.dept_cd = B.dept_cd) AS emp_nm,
    COUNT(*) AS "�μ��� ������",
    MAX(A.birth_de) AS "���� � ���",
    MIN(A.birth_de) AS "�μ��� ������"
FROM tb_emp A
GROUP BY A.dept_cd
HAVING COUNT(*) > 1 -- �׷�ȭ�� ���� ������� ���ǰɱ�
ORDER BY A.dept_cd;

-- ������� �޿��� ���� ���� ���� �׼�, ���� ���� ���� �׼�, ��վ׼� ��ȸ
SELECT emp_no, pay_amt, pay_de
FROM tb_sal_his
ORDER BY emp_no, pay_de;

-- WHERE: �׷�ȭ �� ����, HAVING: �׷�ȭ �� ����
SELECT
    A.emp_no,
    (SELECT B.emp_nm FROM tb_emp B WHERE A.emp_no = B.emp_no) AS emp_nm,
    ROUND(AVG(A.pay_amt), 2) AS "��� �޿�",
    MAX(A.pay_amt) AS "�ְ� ���ɾ�",
    MIN(A.pay_amt) AS "���� ���ɾ�"
FROM tb_sal_his A
WHERE a.pay_de BETWEEN '20190101' AND '20191231'
GROUP BY A.emp_no
HAVING AVG(A.pay_amt) >= 4700000
ORDER BY A.emp_no;

-- ����� 2019�� �����ȣ�� ����̸�, ������ ��ȸ
-- �߰����� ������ 5õ �̻�
SELECT
    A.emp_no AS "�����ȣ",
    (SELECT B.emp_nm FROM tb_emp B WHERE A.emp_no = B.emp_no) AS "����̸�",
    --SUM(A.pay_amt) AS "����"
    TO_CHAR(SUM(A.pay_amt), 'L999,999,999') AS "����"
FROM tb_sal_his A
WHERE A.pay_de BETWEEN '20190101' AND '20191231'
GROUP BY A.emp_no
HAVING SUM(A.pay_amt) >= 50000000
ORDER BY A.emp_no;


-- ���� ORDER BY
-- ASC: ������(�⺻��=��������), DESC ������

SELECT emp_no, emp_nm, addr
FROM tb_emp
ORDER BY emp_no DESC;

SELECT emp_no, emp_nm, addr
FROM tb_emp
ORDER BY emp_nm DESC;

SELECT emp_no, emp_nm, addr
FROM tb_emp
ORDER BY 2 DESC; -- �÷� ������ ���� ����

SELECT emp_no, emp_nm, addr
FROM tb_emp
--ORDER BY emp_nm DESC, emp_no; -- 1�� �����ϰ� ������ ������ 2�� ����
ORDER BY 2 DESC, 1;

SELECT emp_no AS en, emp_nm AS em, addr
FROM tb_emp
ORDER BY em DESC; -- ��Ī���� ���� ����









