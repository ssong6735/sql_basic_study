
-- # DML: ������ ���۾�
-- SELECT, INSERT, UPDATE, DELETE

-- ������ �߰�
INSERT INTO
    board (bno, title, content, writer, reg_date)
VALUES
    (1, '�ȳ�~', '����ִ� �����Դϴ�.', '������', SYSDATE);
    
-- ����
INSERT INTO
    board (bno, content, writer, reg_date)
VALUES
    (2, '����ִ� �����Դϴ�2.', '�Ѹ�', SYSDATE);    
    
INSERT INTO
    board (bno, title, writer, reg_date)
VALUES
    (3, '3���� �Դϴ�.', '��ġ', SYSDATE);
    
INSERT INTO
    board
VALUES
    (4, '3���� �Դϴ�.', '���볻��!!', '��ġ', SYSDATE);

-- ����. PK�� �ߺ��� �����͸� ������ �� ����.   
INSERT INTO
    board
VALUES
    (4, '4���� �Դϴ�.', '���볻��2!!', 'ȫ�浿', SYSDATE);
    
    
COMMIT;


-- ������ ����
UPDATE board
SET writer='������'
WHERE bno=1;

UPDATE board
SET writer='mike',
    content='hello goodbye~~'
WHERE bno=3;

-- UPDATE������ WHERE �������� ������ ���
UPDATE board
SET title='�޷�';

COMMIT;


-- ������ ����
DELETE FROM board
WHERE bno=4;

ROLLBACK;

-- DELETE ������ WHERE �������� ������ ��� ��ü���� �����ǹǷ� ����.
DELETE FROM board;

-- ��ü ������ ����
-- 1. WHERE���� ������ DELETE�� (ROLLBACK ����)
DELETE FROM board;
ROLLBACK;

-- 2. TRUNCATE TABLE DDL�� ����� ��� (ROLLBACK �Ұ��� / ���̺� ������ �������� ����)
-- FK ���� ����
ALTER TABLE REPLY 
DROP CONSTRAINT fk_reply_bno;

TRUNCATE TABLE board;

-- 3. DROP TABLE DDL�� ����� ��� (ROLLBACK �Ұ���/ ���̺� ������ ����)
DROP TABLE board;


SELECT * FROM board;
