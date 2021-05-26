
-- # ��������
-- ## ������ ��������
-- ������ ������: =, <, <=, >, >=, <>

-- �����ȣ�� 1000000005���� ����� ���� �μ��� ��� �������
SELECT
    emp_no, emp_nm, dept_cd
FROM tb_emp
WHERE dept_cd = (
    SELECT dept_cd
    FROM tb_emp
    WHERE emp_no = '1000000005'
);

-- 20200525�� ���� �޿��� ȸ�� 20200525 ��ü ��ձ޿����� ���� ������� ���� ��ȸ
SELECT
    A.emp_no, A.emp_nm, B.pay_de, B.pay_amt
FROM tb_emp A
JOIN tb_sal_his B
ON A.emp_no = B.emp_no
WHERE B.pay_de = '20200525'
    AND B.pay_amt >= ( -- ��ü ����̻� ����
        SELECT AVG(pay_amt)
        FROM tb_sal_his
        WHERE pay_de = '20200525'
    )
;


-- ## ���� �� ��������
-- �������� ��ȸ �Ǽ��� ���� ���� ��
-- ������ ������: IN, ANY, EXISTS

-- �ѱ������ͺ��̽���������� �߱��� �ڰ����� ������ �ִ� �����ȣ�� ���� �ڰ��� ������ ��ȸ
SELECT
    A.emp_no, B.emp_nm, COUNT(A.certi_cd)
FROM tb_emp_certi A
JOIN tb_emp B
ON A.emp_no = B.emp_no
WHERE A.certi_cd IN (
        SELECT C.certi_cd
        FROM tb_certi C
        WHERE C.issue_insti_nm = '�ѱ������ͺ��̽������'
        )
GROUP BY A.emp_no, B.emp_nm
ORDER BY A.emp_no
;

SELECT * FROM tb_certi
WHERE issue_insti_nm = '�ѱ������ͺ��̽������';

SELECT
    emp_no, COUNT(certi_cd)
FROM tb_emp_certi
WHERE certi_cd IN ('100001', '100002', '100003', '100004', '100005', '100006')
GROUP BY emp_no
;























