
-- JOIN ����


-- ũ�ν�����(īƼ�þ� ���δ���): ���� ������ ����. 41��, 14�� => 41*14 = 574
SELECT
    emp_no, emp_nm, tb_emp.dept_cd, dept_nm -- JOIN �� �ߺ��Ǵ� �÷��� ���̺�� ���� ���ش�.
FROM tb_emp, tb_dept; 

SELECT
    dept_cd, dept_nm
FROM tb_dept;

-- EQUI(=) JOIN
SELECT
    emp_no, emp_nm, A.dept_cd, dept_nm 
FROM tb_emp A, tb_dept B
WHERE A.dept_cd = B.dept_cd;


-- �ڰ��� ���� ���̺�
SELECT * FROM tb_certi;
-- ȸ���� ����� �ڰ��� ���� ���̺�
SELECT * FROM tb_emp_certi;
-- ��� ���� ���̺�
SELECT * FROM tb_emp;


-- �����ȣ, �����, �����, ����ڰ��� �ڵ��ȣ
SELECT
    a.emp_no, a.emp_nm, b.acqu_de, b.certi_cd, c.certi_nm
FROM tb_emp A, tb_emp_certi B, tb_certi C
WHERE a.emp_no = b.emp_no -- JOIN ����1
    AND b.certi_cd = c.certi_cd -- JOIN ����2
    AND b.acqu_de BETWEEN '20190101' AND '20191231' -- �б� ����1
    AND a.emp_nm LIKE '��%' -- �б� ����2
;

-- JOIN ���̺��(n), JOIN ���Ǽ�(n-1)

-- JOIN ���̺� 4, JOIN ���� 3
SELECT
    a.emp_no, a.emp_nm, d.dept_nm, b.acqu_de, b.certi_cd, c.certi_nm
FROM tb_emp A, tb_emp_certi B, tb_certi C, tb_dept D
WHERE a.emp_no = b.emp_no
    AND b.certi_cd = c.certi_cd
    AND a.dept_cd = d.dept_cd
;


-- # INNER JOIN
-- 1. 2�� �̻��� ���̺��� ����� �÷��� ���� �������� ���յǴ� ���α��
-- 2. WHERE���� ���� �÷����� �������(=)�� ���� ����

SELECT
    E.emp_no, E.emp_nm, E.addr, D.dept_cd, D.dept_nm
FROM tb_emp E, tb_dept D
WHERE E.dept_cd = D.dept_cd
    AND E.addr LIKE '%����%'
ORDER BY E.emp_no
;

SELECT
    *
FROM tb_emp E, tb_dept D
WHERE E.dept_cd = D.dept_cd
    AND E.addr LIKE '%����%'
ORDER BY E.emp_no
;


-- # NATURAL JOIN
-- 1. NATURAL JOIN�� ������ �̸��� ���� �÷��鿡 ���� �ڵ� �����ϴ� ���
-- 2. ��, �ڵ����� 2�� �̻��� ���̺��� ���� �̸��� ���� �÷��� ã�� INNER������ ����
-- 3. �̶� ���εǴ� ���� �̸��� �÷��� ������ Ÿ���� ���ƾ� �ϸ�, ALIAS�� ���̺���� ���� �� ����.
-- 4. SELECT * ������ ����ϸ�, ���� �÷����� �ڵ� �����ϸ�, ������տ��� �ѹ��� ǥ��
-- * ������ �̸��� �÷��� 2�� �̻��϶� �ΰ��� ���� �� �����ؾ� ��ȸ��

SELECT
    e.emp_no, e.emp_nm, e.addr, dept_cd, d.dept_nm -- dept_cd�� ��Ī, ���̺�� ���̸� ����
FROM tb_emp E NATURAL JOIN tb_dept D
;

SELECT
    *
FROM tb_emp E NATURAL JOIN tb_dept D
;


-- # USING�� ����
-- 1. NATURAL ���ο����� �ڵ����� �̸��� ��ġ�ϴ� ��� �÷��� ���� ������ �Ͼ����
--    USING�� ����ϸ� ���ϴ� �÷��� ���ؼ��� ���������� ������ ���� (���� *�ּ� ���)
-- 2. USING�������� ���� �÷��� ���� ALIAS�� ���̺���� ���ϼ� ����.

SELECT
    E.emp_no, E.emp_nm, E.addr, dept_cd, D.dept_nm
FROM tb_emp E JOIN tb_dept D USING (dept_cd)
;


-- # JOIN ON�� (INNER JOIN ǥ��) : ���� ������ ���� ����.  FROM �� WHERE ��
-- 1. ���� ���� ������(ON��)�� �Ϲ� ���� ������(WHERE��)�� �и��ؼ� �ۼ��ϴ� ���
-- 2. ON���� ����ϸ� JOIN���Ŀ� �������̳� ���������� ���� �߰� ���� ����

SELECT
    E.emp_no, E.emp_nm, E.addr, D.dept_cd, D.dept_nm
FROM tb_emp E 
JOIN tb_dept D -- JOIN �տ� INNER�� �������� (��������)
ON E.dept_cd = D.dept_cd
WHERE E.addr LIKE '%����%'
ORDER BY E.emp_no
;


-- # ���� ���� ���� (GROUP BY, HAVING�� ������ �ٲ� ��)
-- SELECT [DISTINCT] { ���̸� .... } 
-- FROM  ���̺� �Ǵ� �� �̸�
-- JOIN  ���̺� �Ǵ� �� �̸�
-- ON    ���� ����
-- WHERE ��ȸ ����
-- GROUP BY  ���� �׷�ȭ
-- HAVING    �׷�ȭ ����
-- ORDER BY  ������ �� [ASC | DESC];







