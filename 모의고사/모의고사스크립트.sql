--SQL �⺻ �� Ȱ��

--����3
DROP TABLE TB_PLAYER_3;
CREATE TABLE TB_PLAYER_3
(
  PLAYER_ID CHAR(6)
, PLAYER_NM VARCHAR2(50)
, BIRTH_DE CHAR(8)
)
;

INSERT INTO TB_PLAYER_3 VALUES ('100001', '����ȣ', '19730629');
INSERT INTO TB_PLAYER_3 VALUES ('100002', '����ȣ', '19950605');
INSERT INTO TB_PLAYER_3 VALUES ('100003', '������', '19810225');
INSERT INTO TB_PLAYER_3 VALUES ('100004', '�̽¿�', '19980106');
COMMIT;


SELECT * FROM TB_PLAYER_3;

--PLAYER_ID PLAYER_NM   BIRTH_DE
----------- ----------- --------
--100001    ����ȣ      19730629
--100002    ����ȣ      19950605
--100003    ������      19810225
--100004    �̽¿�      19980106


--<SQL1>
SELECT          PLAYER_NM FROM TB_PLAYER_3; --4��

--<SQL2>
SELECT ALL      PLAYER_NM FROM TB_PLAYER_3; --4��(Default�� ALL)

--<SQL3>
SELECT DISTINCT PLAYER_NM FROM TB_PLAYER_3; --3��(����ȣ �ߺ�)
			
-----------------------------------------------------------------------------------------------------------------------------------------------------
			
--����5 

DROP TABLE TB_EMP_5;                                                                                                                                  
CREATE TABLE TB_EMP_5                                                         
(                                                                             
  EMP_NO CHAR(6)                                                              
, EMP_NM VARCHAR2(50)                                                         
, MAJOR VARCHAR2(150)                                                         
, DEPT_CD CHAR(3)                                                             
);
 
INSERT INTO TB_EMP_5 VALUES ('100001', '�̰��', '��ǻ�ͼ���Ʈ������', '101');
INSERT INTO TB_EMP_5 VALUES ('100002', '�̼���', '�����ͻ��̾���'  , '101');
INSERT INTO TB_EMP_5 VALUES ('100003', '������', '��ǻ�Ͱ���'        , '101');
INSERT INTO TB_EMP_5 VALUES ('100004', '�輺��', '��ǻ�Ͱ���'        , '102');
INSERT INTO TB_EMP_5 VALUES ('100005', '��μ�', '�����ͻ��̾���'  , '102');
INSERT INTO TB_EMP_5 VALUES ('100006', '�輱��', '��ǻ�ͼ���Ʈ������', '102');                                                                           
COMMIT;                                                                       


SELECT * FROM TB_EMP_5;


--EMP_NO EMP_NM  MAJOR               DEPT_CD
-------- ------- ------------------- -------
--100001 �̰��  ��ǻ�ͼ���Ʈ������  101
--100002 �̼���  �����ͻ��̾���    101
--100003 ������  ��ǻ�Ͱ���          101
--100004 �輺��  ��ǻ�Ͱ���          102
--100005 ��μ�  �����ͻ��̾���    102
--100006 �輱��  ��ǻ�ͼ���Ʈ������  102

--��
SELECT A.*
 FROM TB_EMP_5 A
WHERE
      (     A.MAJOR = '�����ͻ��̾���'
        AND A.DEPT_CD = '101'
      )
   OR
      (     A.MAJOR = '��ǻ�Ͱ���'
        AND A.DEPT_CD = '102'
      )
;


--�� ���� (������ �����ͻ��̾��� Ȥ�� ��ǻ�Ͱ����̸鼭 �μ��ڵ尡 '101' Ȥ�� '102'�̸� ��� ��µȴ�.)
SELECT A.*
 FROM TB_EMP_5 A
WHERE A.MAJOR IN ('�����ͻ��̾���', '��ǻ�Ͱ���')
  AND A.DEPT_CD IN ('101', '102')
;


--��
SELECT A.*
 FROM TB_EMP_5 A
WHERE (A.MAJOR, A.DEPT_CD) IN (('�����ͻ��̾���', '101'), ('��ǻ�Ͱ���', '102'));
;

--�� ���� (������ ��ǻ�ͼ���Ʈ�������̸鼭 �μ��ڵ尡 '101' Ȥ�� '102'�� ������ ���տ��� ���ܵȴ�.)
SELECT A.*
 FROM TB_EMP_5 A
WHERE (A.MAJOR, A.DEPT_CD) NOT IN (('��ǻ�ͼ���Ʈ������', '101'), ('��ǻ�ͼ���Ʈ������', '102'));
;

-----------------------------------------------------------------------------------------------------------------------------------------------------

--����6
DROP TABLE TB_CHAR_VARCHAR_6;

CREATE TABLE TB_CHAR_VARCHAR_6
(
  CHAR_VAL CHAR(10)
, VARCHAR_VAL VARCHAR2(10)
)
;

INSERT INTO TB_CHAR_VARCHAR_6 VALUES ( 'ABC'       , 'ABC'       ); --�������
INSERT INTO TB_CHAR_VARCHAR_6 VALUES ( 'ABCDE'     , 'ABCDE'     ); --�������
INSERT INTO TB_CHAR_VARCHAR_6 VALUES ( 'ABCDEFGHIJ', 'ABCDEFGHIJ'); --�������
INSERT INTO TB_CHAR_VARCHAR_6 VALUES ( 'ABC  '     , 'ABC  '     ); --������ 2ĭ��
INSERT INTO TB_CHAR_VARCHAR_6 VALUES ( 'ABCDE     ', 'ABCDE     '); --������ 5ĭ��

COMMIT;

--<SQL��>
SELECT COUNT(*) CNT
FROM TB_CHAR_VARCHAR_6 A
WHERE A.CHAR_VAL = A.VARCHAR_VAL
;

--<Ȯ��>
--CHAR�� VARCHAR �񱳽� ���̴� �ٸ��� �ٸ������� �Ǵ��Ѵ�. �� �� ���ڿ��� ���̰� �����ϰ� ���ڿ��� ���ƾ� ���ٰ� �Ǵ��Ѵ�.
SELECT *
FROM TB_CHAR_VARCHAR_6 A
WHERE A.CHAR_VAL = A.VARCHAR_VAL
;

--CHAR_VAL   VARCHAR_VAL 
------------ ----------- 
--ABCDEFGHIJ ABCDEFGHIJ  --�������
--ABCDE      ABCDE       --������ 5ĭ��


-----------------------------------------------------------------------------------------------------------------------------------------------------
			
--����7

--<SQL��>
SELECT ABS(CEIL(3.14) + FLOOR(3.14) * SIGN(-3.14)) AS RESULT_VAL
   FROM DUAL
;

	
--<�׽�Ʈ>
 SELECT ABS(CEIL(3.14) + FLOOR(3.14) * SIGN(-3.14)) AS RESULT_VAL
      , CEIL(3.14) --4�� ����(õ��)
      , FLOOR(3.14) --3�� ����(�ٴ�)
      , SIGN(-3.14) -- -1�� ����(����)
   FROM DUAL
;
   
--RESULT_VAL CEIL(3.14) FLOOR(3.14) SIGN(-3.14) 
------------ ---------- ----------- ----------- 
--         1          4           3          -1
         
-----------------------------------------------------------------------------------------------------------------------------------------------------

--����8

SELECT DUMMY FROM DUAL;

--DUMMY
-------
--X

--<SQL��>
SELECT NVL(MAX(DUMMY), 'DUMMY') AS RESULT_VAL --MAX�� ���� �������� ���� ����, NVL�Լ������� 'DUMMY'�� ����
  FROM DUAL
  WHERE 1=0 --������ ����
;


SELECT NVL(MAX(DUMMY), 'DUMMY') AS RESULT_VAL --MAX�� ���� �������� ���� ����, NVL�Լ������� 'DUMMY'�� ����
  FROM DUAL
  WHERE 1=1 --
;

SELECT MAX(DUMMY) AS RESULT_VAL --MAX�� ���� �������� ���� ����, NVL�Լ������� 'DUMMY'�� ����
  FROM DUAL
  WHERE 1=0 --
;

SELECT MAX(DUMMY) AS RESULT_VAL --MAX�� ���� �������� ���� ����, NVL�Լ������� 'DUMMY'�� ����
  FROM DUAL
  WHERE 1=1 --
;

SELECT MAX(NVL(DUMMY, 'DUMMY')) AS RESULT_VAL --MAX�� ���� �������� ���� ����, NVL�Լ������� 'DUMMY'�� ����
  FROM DUAL
  WHERE 1=0 --
;

--RESULT_VAL 
------------ 
--DUMMY   

-----------------------------------------------------------------------------------------------------------------------------------------------------    
			
--����9

DROP TABLE TB_EMP_9;

CREATE TABLE TB_EMP_9
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, DEPT_CD CHAR(3) NULL
, CONSTRAINT TB_EMP_9_PK PRIMARY KEY(EMP_NO)
)
;

INSERT INTO TB_EMP_9 VALUES ('100001', '�̰��', '101');
INSERT INTO TB_EMP_9 VALUES ('100002', '����ȣ', '101');
INSERT INTO TB_EMP_9 VALUES ('100003', '������', '102');
INSERT INTO TB_EMP_9 VALUES ('100004', '�����', '102');
INSERT INTO TB_EMP_9 VALUES ('100005', 'Ȳ����', '103');
INSERT INTO TB_EMP_9 VALUES ('100006', 'Ȳ�¼�', '103');
INSERT INTO TB_EMP_9 VALUES ('100007', '��̼�', '104');
INSERT INTO TB_EMP_9 VALUES ('100008', '�ڼ���', '104');
INSERT INTO TB_EMP_9 VALUES ('100009', '���°�',  NULL);
INSERT INTO TB_EMP_9 VALUES ('100010', '��¸�',  NULL);

COMMIT;

--<SQL��>
SELECT COUNT(DEPT_CD) --8��
     , COUNT(*) --10�� (�� 2�� ����)
     , COUNT(DISTINCT DEPT_CD) --4��(�μ��ڵ��� ������ 4����)
  FROM TB_EMP_9
;

-----------------------------------------------------------------------------------------------------------------------------------------------------
			
--����10

DROP TABLE TB_PLAYER_10; 
CREATE TABLE TB_PLAYER_10
(
  PLAYER_ID CHAR(6)
, PLAYER_NM VARCHAR2(50) NOT NULL
, POS_NM VARCHAR2(5)
, BIRTH_DE CHAR(8) NOT NULL
, HEIGHT NUMBER(10, 2) NOT NULL
, WEIGHT NUMBER(10, 2) NOT NULL
, CONSTRAINT TB_PLAYER_10_PK PRIMARY KEY (PLAYER_ID)
)
;

INSERT INTO TB_PLAYER_10 VALUES ('100001', 'Ȳ��ȫ', 'FW' ,  '19680714', '183.4', '81.2');
INSERT INTO TB_PLAYER_10 VALUES ('100002', '����ȯ', 'FW' ,  '19760127', '178.1', '68.3');
INSERT INTO TB_PLAYER_10 VALUES ('100003', '������', 'MF' ,  '19810330', '175.2', '71.2');
INSERT INTO TB_PLAYER_10 VALUES ('100004', '����ö', 'MF' ,  '19711018', '184.1', '77.8');
INSERT INTO TB_PLAYER_10 VALUES ('100005', '��õ��', 'MF' ,  '19810709', '172.1', '63.1');
INSERT INTO TB_PLAYER_10 VALUES ('100006', '������', 'MF' ,  '19790204', '187.1', '77.2');
INSERT INTO TB_PLAYER_10 VALUES ('100007', '���θ�', 'DF' ,  '19800725', '181.1', '75.8');
INSERT INTO TB_PLAYER_10 VALUES ('100008', '�̿�ǥ', 'DF' ,  '19770423', '177.4', '70.2');
INSERT INTO TB_PLAYER_10 VALUES ('100009', 'ȫ��', 'DF' ,  '19690212', '181.1', '72.4');
INSERT INTO TB_PLAYER_10 VALUES ('100010', '����ö', 'DF' ,  '19710326', '187.8', '86.1');
INSERT INTO TB_PLAYER_10 VALUES ('100011', '�̿���', 'GK' ,  '19730426', '182.1', '88.1');

COMMIT;

--�� ������ ��ս������� ���� ����
SELECT A.POS_NM, AVG(HEIGHT) HEIGHT_AVG
  FROM TB_PLAYER_10 A
 GROUP BY A.POS_NM
 HAVING AVG(A.HEIGHT) >= 180
 ORDER BY AVG(A.HEIGHT) DESC
 ;

--�� ������ ��ս������� ���� ����, HAVING�� GROUP BY���� �������͵���
SELECT A.POS_NM, AVG(HEIGHT) HEIGHT_AVG
  FROM TB_PLAYER_10 A
 HAVING AVG(A.HEIGHT) >= 180
 GROUP BY A.POS_NM
 ORDER BY AVG(A.HEIGHT) DESC
 ;

--��  ������ ��ս������� ���� ����, HAVING�� GROUP BY���� �������͵���
SELECT A.POS_NM, A.HEIGHT_AVG
FROM
  (
    SELECT A.POS_NM, AVG(HEIGHT) HEIGHT_AVG
      FROM TB_PLAYER_10 A
     GROUP BY A.POS_NM
     ORDER BY AVG(A.HEIGHT)
  ) A
WHERE A.HEIGHT_AVG >= 180
ORDER BY 2 DESC
;

--�� ������ �ζ��κ䳻������ ��ս������� �������������� ���� SQL�ܿ��� �����Ǹ����� ���������ϰ�����
SELECT A.POS_NM, A.HEIGHT_AVG
FROM
  (
    SELECT A.POS_NM, AVG(HEIGHT) HEIGHT_AVG
     FROM TB_PLAYER_10 A
 GROUP BY A.POS_NM
 ORDER BY AVG(A.HEIGHT) DESC
  ) A
WHERE A.HEIGHT_AVG >= 180
ORDER BY 1 DESC
		  ;

-----------------------------------------------------------------------------------------------------------------------------------------------------
		
--����11

DROP TABLE TB_PLAYER_11; 

CREATE TABLE TB_PLAYER_11
(
  PLAYER_ID CHAR(6)
, PLAYER_NM VARCHAR2(50) NOT NULL
, POS_NM VARCHAR2(5)
, BIRTH_DE CHAR(8) NOT NULL
, HEIGHT NUMBER(10, 2) NOT NULL
, WEIGHT NUMBER(10, 2) NOT NULL
, CONSTRAINT TB_PLAYER_11_PK PRIMARY KEY (PLAYER_ID)
)
;

INSERT INTO TB_PLAYER_11 VALUES ('100001', 'Ȳ��ȫ', 'FW' ,  '19680714', '183.4', '81.2');
INSERT INTO TB_PLAYER_11 VALUES ('100002', '����ȯ', 'FW' ,  '19760127', '178.1', '68.3');
INSERT INTO TB_PLAYER_11 VALUES ('100003', '������', 'MF',  '19810330', '175.2', '71.2');
INSERT INTO TB_PLAYER_11 VALUES ('100004', '����ö', 'MF' ,  '19711018', '184.1', '77.8');
INSERT INTO TB_PLAYER_11 VALUES ('100005', '��õ��', 'MF' ,  '19810709', '172.1', '63.1');
INSERT INTO TB_PLAYER_11 VALUES ('100006', '������', 'MF' ,  '19790204', '187.1', '77.2');
INSERT INTO TB_PLAYER_11 VALUES ('100007', '���θ�', 'DF' ,  '19800725', '181.1', '75.8');
INSERT INTO TB_PLAYER_11 VALUES ('100008', '�̿�ǥ', 'DF' ,  '19770423', '177.4', '70.2');
INSERT INTO TB_PLAYER_11 VALUES ('100009', 'ȫ��', 'DF' ,  '19690212', '181.1', '72.4');
INSERT INTO TB_PLAYER_11 VALUES ('100010', '����ö', 'DF' ,  '19710326', '187.8', '86.1');
INSERT INTO TB_PLAYER_11 VALUES ('100011', '�̿���', 'GK' ,  '19730426', '182.1', '88.1');

COMMIT;


--<SQL��> --������ MAX�� �ְ������ 185�� �Ѵ� ������ �����ϴ� �������� ���Ű�� ���ϰ� ����
SELECT A.POS_NM AS ������
     , AVG(HEIGHT) AS ���Ű
  FROM TB_PLAYER_11 A
GROUP BY A.POS_NM
HAVING MAX(A.HEIGHT) >= 185
;

-----------------------------------------------------------------------------------------------------------------------------------------------------

--����12
											  		  
DROP TABLE TB_EMP_SAL_12; 

CREATE TABLE TB_EMP_SAL_12
(
  EMP_NO CHAR(6)
, STD_YYYY CHAR(4)
, SAL NUMBER(15) NULL
, CONSTRAINT TB_EMP_SAL_12_PK PRIMARY KEY(EMP_NO, STD_YYYY)
)
;

INSERT INTO TB_EMP_SAL_12 VALUES ('100001', '2020', '70000000');
INSERT INTO TB_EMP_SAL_12 VALUES ('100001', '2019', '65000000');
INSERT INTO TB_EMP_SAL_12 VALUES ('100001', '2018', '60000000');

INSERT INTO TB_EMP_SAL_12 VALUES ('100002', '2020', '60000000');
INSERT INTO TB_EMP_SAL_12 VALUES ('100002', '2019', '55000000');
INSERT INTO TB_EMP_SAL_12 VALUES ('100002', '2018', '50000000');


INSERT INTO TB_EMP_SAL_12 VALUES ('100003', '2020', '50000000');
INSERT INTO TB_EMP_SAL_12 VALUES ('100003', '2019', '45000000');
INSERT INTO TB_EMP_SAL_12 VALUES ('100003', '2018', '40000000');

INSERT INTO TB_EMP_SAL_12 VALUES ('100004', '2020', '40000000');
INSERT INTO TB_EMP_SAL_12 VALUES ('100004', '2019', '35000000');
INSERT INTO TB_EMP_SAL_12 VALUES ('100004', '2018', '30000000');

INSERT INTO TB_EMP_SAL_12 VALUES ('100005', '2020',  NULL     );
INSERT INTO TB_EMP_SAL_12 VALUES ('100005', '2019',  NULL     );
INSERT INTO TB_EMP_SAL_12 VALUES ('100005', '2018',  NULL     );

COMMIT;

--�� ���� �� ���� �ö��
SELECT *
 FROM TB_EMP_SAL_12 A
WHERE A.STD_YYYY = '2019'
ORDER BY A.SAL DESC
;

--�� ���� �� ���� �ö��
SELECT *
  FROM TB_EMP_SAL_12 A
 WHERE A.STD_YYYY = '2019'
 ORDER BY A.STD_YYYY, A.SAL DESC
 ;

--�� ������ ���� 0���� ó���ϰ� ����������
SELECT *
  FROM TB_EMP_SAL_12 A
 WHERE A.STD_YYYY = '2019'
 ORDER BY NVL(A.SAL, 0) DESC
;

-- NULL �� 0���� ������ ��ȸ
SELECT EMP_NO, SED_YYYY, NVL(SAL, 0) AS SAL
  FROM TB_EMP_SAL_12 A
 WHERE A.STD_YYYY = '2019'
 ORDER BY NVL(A.SAL, 0) DESC
;

--�� ���� 0���� ó���ϰ� ���������Ͽ� ���� ������ �ö��
SELECT *
  FROM TB_EMP_SAL_12 A
 WHERE A.STD_YYYY = '2019'
 ORDER BY NVL(A.SAL, 0) ASC
;

-----------------------------------------------------------------------------------------------------------------------------------------------------
		
--����13

DROP TABLE TB_EMP_SAL_13; 
CREATE TABLE TB_EMP_SAL_13
(
  EMP_NO CHAR(6)
, STD_YYYY CHAR(4)
, SAL NUMBER(15) NULL
, CONSTRAINT TB_EMP_SAL_13_PK PRIMARY KEY(EMP_NO, STD_YYYY)
)
;

INSERT INTO TB_EMP_SAL_13 VALUES ('100001', '2020', '70000000');
INSERT INTO TB_EMP_SAL_13 VALUES ('100001', '2019', '65000000');
INSERT INTO TB_EMP_SAL_13 VALUES ('100001', '2018', '60000000');

INSERT INTO TB_EMP_SAL_13 VALUES ('100002', '2020', '60000000');
INSERT INTO TB_EMP_SAL_13 VALUES ('100002', '2019', '55000000');
INSERT INTO TB_EMP_SAL_13 VALUES ('100002', '2018', '50000000');


INSERT INTO TB_EMP_SAL_13 VALUES ('100003', '2020', '50000000');
INSERT INTO TB_EMP_SAL_13 VALUES ('100003', '2019', '45000000');
INSERT INTO TB_EMP_SAL_13 VALUES ('100003', '2018', '40000000');

INSERT INTO TB_EMP_SAL_13 VALUES ('100004', '2020', '40000000');
INSERT INTO TB_EMP_SAL_13 VALUES ('100004', '2019', '35000000');
INSERT INTO TB_EMP_SAL_13 VALUES ('100004', '2018', '30000000');

INSERT INTO TB_EMP_SAL_13 VALUES ('100005', '2020',  NULL     );
INSERT INTO TB_EMP_SAL_13 VALUES ('100005', '2019',  NULL     );
INSERT INTO TB_EMP_SAL_13 VALUES ('100005', '2018',  NULL     );

COMMIT;


--�� SAL�� ���ΰ� ���ܵ�
SELECT STD_YYYY, SAL
  FROM TB_EMP_SAL_13
 GROUP BY STD_YYYY, SAL
 HAVING SAL IS NOT NULL
 ORDER BY STD_YYYY, SAL
;



--�� COUNT(SAL) �������� SAL�� ���ΰ� ���ܵ�
SELECT STD_YYYY, SAL
  FROM TB_EMP_SAL_13
 GROUP BY STD_YYYY, SAL
 HAVING COUNT(SAL) >= 1
 ORDER BY STD_YYYY, SAL
;

--�� ������ COUNT(SAL)�� ���� 2���� ū ���� ����
SELECT STD_YYYY, SAL
  FROM TB_EMP_SAL_13
 GROUP BY STD_YYYY, SAL
 HAVING COUNT(SAL) >= 2
 ORDER BY STD_YYYY, SAL
;

--��  SAL > 0�������� SAL�� ���ΰ� ���ܵ�
SELECT STD_YYYY, SAL
  FROM TB_EMP_SAL_13
 GROUP BY STD_YYYY, SAL
 HAVING SAL > 0
 ORDER BY STD_YYYY, SAL
;

-----------------------------------------------------------------------------------------------------------------------------------------------------
		
--����15

DROP TABLE TB_EMP_SAL_15;
DROP TABLE TB_EMP_15;
DROP TABLE TB_SAL_GRADE_15;

CREATE TABLE TB_EMP_15
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, CONSTRAINT TB_EMP_15_PK PRIMARY KEY (EMP_NO)
)
;

INSERT INTO TB_EMP_15 VALUES ('100001', '�̰��');
INSERT INTO TB_EMP_15 VALUES ('100002', '�̼���');

COMMIT;

CREATE TABLE TB_EMP_SAL_15
(
  EMP_NO CHAR(6)
, SAL_STD_YYYY CHAR(8)
, SAL NUMBER
, CONSTRAINT TB_EMP_SAL_15_PK PRIMARY KEY (EMP_NO, SAL_STD_YYYY)
)
;

ALTER TABLE TB_EMP_SAL_15
ADD CONSTRAINTS TB_EMP_SAL_15_FK FOREIGN KEY (EMP_NO)
REFERENCES TB_EMP_15(EMP_NO)
;

INSERT INTO TB_EMP_SAL_15 VALUES ('100001', '2020', 75000000);
INSERT INTO TB_EMP_SAL_15 VALUES ('100001', '2019', 65000000);
INSERT INTO TB_EMP_SAL_15 VALUES ('100001', '2018', 55000000);
INSERT INTO TB_EMP_SAL_15 VALUES ('100002', '2020', 55000000);
INSERT INTO TB_EMP_SAL_15 VALUES ('100002', '2019', 35000000);
INSERT INTO TB_EMP_SAL_15 VALUES ('100002', '2018', 25000000);

COMMIT;

CREATE TABLE TB_SAL_GRADE_15
(
  SAL_GRADE CHAR(1)
, LOW_SAL NUMBER(10) NOT NULL
, HIGH_SAL NUMBER(10) NOT NULL
, CONSTRAINT TB_SAL_GRADE_15_PK PRIMARY KEY (SAL_GRADE)
)
;

INSERT INTO TB_SAL_GRADE_15 VALUES ('S', 100000000, 9999999999);
INSERT INTO TB_SAL_GRADE_15 VALUES ('A',  80000000, 99999999  );
INSERT INTO TB_SAL_GRADE_15 VALUES ('B',  60000000, 79999999  );
INSERT INTO TB_SAL_GRADE_15 VALUES ('C',  40000000, 59999999  );
INSERT INTO TB_SAL_GRADE_15 VALUES ('D',  30000000, 39999999  );
INSERT INTO TB_SAL_GRADE_15 VALUES ('E',  20000000, 29999999  );
INSERT INTO TB_SAL_GRADE_15 VALUES ('F',         0, 19999999  );

COMMIT;

--<SQL��>

--������ ����� B B C C D E�� ����
--������ ����� B C D E�� 
--����� ������ 4����
SELECT COUNT(DISTINCT C.SAL_GRADE) AS CNT_SAL_GRADE
  FROM TB_EMP_15 A
     , TB_EMP_SAL_15 B
     , TB_SAL_GRADE_15 C
 WHERE A.EMP_NO = B.EMP_NO
   AND B.SAL BETWEEN C.LOW_SAL AND C.HIGH_SAL
;


--<�׽�Ʈ>
SELECT C.SAL_GRADE AS CNT_SAL_GRADE --������ ����� B B C C D E�� ����
     , B.SAL
  FROM TB_EMP_15 A
     , TB_EMP_SAL_15 B
     , TB_SAL_GRADE_15 C
 WHERE A.EMP_NO = B.EMP_NO
   AND B.SAL BETWEEN C.LOW_SAL AND C.HIGH_SAL
   ORDER BY 1;

-----------------------------------------------------------------------------------------------------------------------------------------------------			

--����19

DROP TABLE TB_EMP_19;
DROP TABLE TB_DEPT_19;

CREATE TABLE TB_DEPT_19
(
  DEPT_NO CHAR(6)
, DEPT_NM VARCHAR2(150) NOT NULL
, CONSTRAINT TB_DEPT_19_PK PRIMARY KEY (DEPT_NO)
)
;

INSERT INTO TB_DEPT_19 VALUES ('D00001', 'Data�ð�ȭ��');
INSERT INTO TB_DEPT_19 VALUES ('D00002', 'Data�÷�����');
INSERT INTO TB_DEPT_19 VALUES ('D00003', 'Data�м���');

COMMIT;

CREATE TABLE TB_EMP_19
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, DEPT_NO CHAR(6)
, CONSTRAINT TB_EMP_19_PK PRIMARY KEY (EMP_NO)
)
;

INSERT INTO TB_EMP_19 VALUES ('E00001', '�̰��', 'D00001');
INSERT INTO TB_EMP_19 VALUES ('E00002', '�̼���', 'D00001');
INSERT INTO TB_EMP_19 VALUES ('E00003', '��ȿ��', 'D00002');
INSERT INTO TB_EMP_19 VALUES ('E00004', '�ڻ���', 'D00003');


COMMIT;

ALTER TABLE TB_EMP_19
ADD CONSTRAINTS TB_EMP_19_FK FOREIGN KEY (DEPT_NO)
REFERENCES TB_DEPT_19(DEPT_NO)
;


--<SQL��>

--DISTINCT A.DEPT_NO �̺κ��� D00002���� �ش�� D00001�� ���� �״�� �ߺ����� ����
 SELECT DISTINCT A.DEPT_NO
   FROM TB_EMP_19 A
  WHERE A.DEPT_NO = 'D00002'
 UNION ALL
 SELECT A.DEPT_NO
   FROM TB_EMP_19 A
  WHERE A.DEPT_NO = 'D00001'
 ORDER BY DEPT_NO
 ;

--DEPT_NO 
--------- 
--D00001 
--D00001 
--D00002 

-----------------------------------------------------------------------------------------------------------------------------------------------------			
            
--����21

DROP TABLE TB_DEPT_21;

CREATE TABLE TB_DEPT_21
(
  DEPT_NO CHAR(6)
, DEPT_NM VARCHAR2(150) NOT NULL
, UPPER_DEPT_NO CHAR(6) NULL
, CONSTRAINT TB_DEPT_21_PK PRIMARY KEY (DEPT_NO)
)
;

INSERT INTO TB_DEPT_21 VALUES ('D00001', 'ȸ���'        ,  NULL   );

INSERT INTO TB_DEPT_21 VALUES ('D00002', '��������'      , 'D00001');
INSERT INTO TB_DEPT_21 VALUES ('D00003', '�������'      , 'D00001');

INSERT INTO TB_DEPT_21 VALUES ('D00004', '����������'    , 'D00002');
INSERT INTO TB_DEPT_21 VALUES ('D00005', '�ؿܿ�����'    , 'D00002');

INSERT INTO TB_DEPT_21 VALUES ('D00006', '���߻����'    , 'D00003');
INSERT INTO TB_DEPT_21 VALUES ('D00007', '�����ͻ����'  , 'D00003');

INSERT INTO TB_DEPT_21 VALUES ('D00008', '���������'    , 'D00004');
INSERT INTO TB_DEPT_21 VALUES ('D00009', '����������'    , 'D00004');

INSERT INTO TB_DEPT_21 VALUES ('D00010', '�Ϲ̿�����'    , 'D00005');
INSERT INTO TB_DEPT_21 VALUES ('D00011', '���̿�����'    , 'D00005');

INSERT INTO TB_DEPT_21 VALUES ('D00012', '����������'    , 'D00006');
INSERT INTO TB_DEPT_21 VALUES ('D00013', 'ȭ�鰳����'    , 'D00006');

INSERT INTO TB_DEPT_21 VALUES ('D00014', '����Ŭ�����'  , 'D00007');
INSERT INTO TB_DEPT_21 VALUES ('D00015', '���¼ҽ������', 'D00007');

COMMIT;

--<SQL��>
SELECT B.DEPT_NO, B.DEPT_NM, B.UPPER_DEPT_NO, A.UPPER_DEPT_NO
  FROM TB_DEPT_21 A �� OUTER JOIN TB_DEPT_21 B
    ON (B.UPPER_DEPT_NO = A.DEPT_NO)
 WHERE A.UPPER_DEPT_NO IS NULL
ORDER BY B.DEPT_NO;


--<�׽�Ʈ>
SELECT B.DEPT_NO, B.DEPT_NM, B.UPPER_DEPT_NO, A.UPPER_DEPT_NO
  FROM TB_DEPT_21 A RIGHT OUTER JOIN TB_DEPT_21 B --B������ �ٳ���
    ON (B.UPPER_DEPT_NO = A.DEPT_NO)
 WHERE A.UPPER_DEPT_NO IS NULL --'D00002', 'D00003'�� �����μ��� 'D00001'�� �����μ��� ����
ORDER BY B.DEPT_NO
;

SELECT B.DEPT_NO, B.DEPT_NM, B.UPPER_DEPT_NO, A.UPPER_DEPT_NO
  FROM TB_DEPT_21 A LEFT OUTER JOIN TB_DEPT_21 B --B������ �ٳ���
    ON (B.UPPER_DEPT_NO = A.DEPT_NO)
 WHERE A.UPPER_DEPT_NO IS NULL --'D00002', 'D00003'�� �����μ��� 'D00001'�� �����μ��� ����
ORDER BY B.DEPT_NO
;

--DEPT_NO DEPT_NM    UPPER_DEPT_NO UPPER_DEPT_NO 
--------- ---------- ------------- ------------- 
--D00001  ȸ���     NULL          NULL                  
--D00002  ��������   D00001        NULL             
--D00003  �������   D00001        NULL     

-----------------------------------------------------------------------------------------------------------------------------------------------------
		  
--����23

DROP TABLE TB_EMP_23;
DROP TABLE TB_DEPT_23;

CREATE TABLE TB_DEPT_23
(
  DEPT_CD CHAR(4)
, DEPT_NM VARCHAR2(150) NOT NULL
)
;

ALTER TABLE TB_DEPT_23
ADD CONSTRAINT TB_DEPT_23_PK PRIMARY KEY (DEPT_CD);

INSERT INTO TB_DEPT_23 (DEPT_CD, DEPT_NM) VALUES ('D001', 'Data�ð�ȭ��');
INSERT INTO TB_DEPT_23 (DEPT_CD, DEPT_NM) VALUES ('D002', 'Data�÷�����');
INSERT INTO TB_DEPT_23 (DEPT_CD, DEPT_NM) VALUES ('D003', 'Data�м���');

COMMIT;

CREATE TABLE TB_EMP_23
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, SEX_CD CHAR(1)
, BIRTH_DE CHAR(8) NOT NULL
, DEPT_CD CHAR(4)
)
;

ALTER TABLE TB_EMP_23
ADD CONSTRAINT TB_EMP_23_PK PRIMARY KEY (EMP_NO);

ALTER TABLE TB_EMP_23
ADD CONSTRAINT TB_EMP_23_FK FOREIGN KEY (DEPT_CD) REFERENCES TB_DEPT_23(DEPT_CD);


INSERT INTO TB_EMP_23 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00001', '�̰��', '1', '19840718', 'D001');
INSERT INTO TB_EMP_23 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00002', '�̼���', '2', '19940502', 'D001');
INSERT INTO TB_EMP_23 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00003', '�ڰ��', '1', '19830414', 'D002');
INSERT INTO TB_EMP_23 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00004', '���ֿ�', '2', '19920508', 'D002');
INSERT INTO TB_EMP_23 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00005', '��ö��', '1', '19860112', 'D003');
INSERT INTO TB_EMP_23 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00006', '������', '2', '19960218', 'D003');
INSERT INTO TB_EMP_23 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00007', '������', '2', '19980218',  NULL );

COMMIT;

--��
 SELECT A.EMP_NO, A.EMP_NM
      , (SELECT L.DEPT_NM FROM TB_DEPT_23 L WHERE L.DEPT_CD = A.DEPT_CD) AS DEPT_NM
      , A.BIRTH_DE
   FROM TB_EMP_23 A
   WHERE (A.DEPT_CD, BIRTH_DE) IN
                             (SELECT B.DEPT_CD, MAX(BIRTH_DE) --���̰� ������ ��µǰԵ�
                                FROM TB_EMP_23 B GROUP BY B.DEPT_CD
                              )
 ORDER BY A.BIRTH_DE
 ;

-- ��
 SELECT A.EMP_NO, A.EMP_NM
      , (SELECT L.DEPT_NM FROM TB_DEPT_23 L WHERE L.DEPT_CD = A.DEPT_CD) AS DEPT_NM
      , A.BIRTH_DE
   FROM TB_EMP_23 A
   WHERE (A.DEPT_CD, BIRTH_DE) IN
                             (SELECT B.DEPT_CD, MIN(BIRTH_DE) --���̰����� ����� ��µ�����
                                FROM TB_EMP_23 B GROUP BY B.DEPT_CD
                              )
 ORDER BY A.DEPT_CD, A.BIRTH_DE --DEPT_CD�� ���� ���ͼ� DEPT_CD�� ���ĵǰԵ�
 ;
 
 
 SELECT A.EMP_NO, A.EMP_NM
      , (SELECT L.DEPT_NM FROM TB_DEPT_23 L WHERE L.DEPT_CD = A.DEPT_CD) AS DEPT_NM
      , A.BIRTH_DE, A.DEPT_CD
   FROM TB_EMP_23 A
   WHERE (A.DEPT_CD, BIRTH_DE) IN
                             (SELECT B.DEPT_CD, MIN(BIRTH_DE) --���̰����� ����� ��µ�����
                                FROM TB_EMP_23 B GROUP BY B.DEPT_CD
                              )
 ORDER BY A.DEPT_CD, A.BIRTH_DE --DEPT_CD�� ���� ���ͼ� DEPT_CD�� ���ĵǰԵ�
 ;

-- �� �ƿ��� ������ ����
 SELECT A.EMP_NO, A.EMP_NM
      , C.DEPT_NM AS DEPT_NM
      , A.BIRTH_DE
   FROM TB_EMP_23 A
      , (
             SELECT B.DEPT_CD, MIN(BIRTH_DE) AS BIRTH_DE
             FROM TB_EMP_23 B
             GROUP BY B.DEPT_CD
        ) B
      , TB_DEPT_23 C
 WHERE A.DEPT_CD = B.DEPT_CD(+)
  AND A.BIRTH_DE = B.BIRTH_DE(+)
  AND A.DEPT_CD = C.DEPT_CD(+)
  ORDER BY A.BIRTH_DE
  ;

-- �� ������
 SELECT A.EMP_NO, A.EMP_NM
      , (SELECT L.DEPT_NM FROM TB_DEPT_23 L WHERE L.DEPT_CD = A.DEPT_CD) AS DEPT_NM
      , A.BIRTH_DE
   FROM TB_EMP_23 A
      , (
             SELECT B.DEPT_CD, MIN(BIRTH_DE) AS BIRTH_DE --���̸�������� ����
             FROM TB_EMP_23 B
             GROUP BY B.DEPT_CD
        ) B
 WHERE A.DEPT_CD = B.DEPT_CD
  AND A.BIRTH_DE = B.BIRTH_DE
  ORDER BY A.BIRTH_DE --���̰� ���� ������ ����
  ;

-----------------------------------------------------------------------------------------------------------------------------------------------------
	  
--����25

DROP TABLE TB_EMP_25;
DROP TABLE TB_DEPT_25;

CREATE TABLE TB_DEPT_25
(
  DEPT_CD CHAR(4)
, DEPT_NM VARCHAR2(150) NOT NULL
, CONSTRAINT TB_DEPT_25_PK PRIMARY KEY(DEPT_CD)
)
;

CREATE TABLE TB_EMP_25
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, JOB_NM VARCHAR2(150) NULL
, CUR_SAL NUMBER
, DEPT_CD CHAR(4)
, CONSTRAINT TB_EMP_25_PK PRIMARY KEY(EMP_NO)
)
;

ALTER TABLE TB_EMP_25
ADD CONSTRAINT TB_EMP_25_FK FOREIGN KEY (DEPT_CD) REFERENCES TB_DEPT_25(DEPT_CD);

INSERT INTO TB_DEPT_25 VALUES ('D101', '�����Ͱ�����'        );
INSERT INTO TB_DEPT_25 VALUES ('D102', '�������÷�����'      );
INSERT INTO TB_DEPT_25 VALUES ('D103', '�����ͻ��̾���'    );
INSERT INTO TB_DEPT_25 VALUES ('D104', '�����ͼ�����'        );
INSERT INTO TB_DEPT_25 VALUES ('D105', '�����͸��̱׷��̼���');

COMMIT;

INSERT INTO TB_EMP_25 VALUES ('100001', '�̰��', 'SQL������'     , 45000000, 'D101');
INSERT INTO TB_EMP_25 VALUES ('100002', '�̵���', '���ν���������', 40000000, 'D101');

INSERT INTO TB_EMP_25 VALUES ('100003', '��ö��', '�����������Ͼ�', 40000000, 'D102');
INSERT INTO TB_EMP_25 VALUES ('100004', '�ڻ���', '�����쿣���Ͼ�', 35000000, 'D102');


INSERT INTO TB_EMP_25 VALUES ('100005', '������', 'R������'       , 50000000, 'D103');
INSERT INTO TB_EMP_25 VALUES ('100006', '��ٿ�', '���̽㰳����'  , 45000000, 'D103');


INSERT INTO TB_EMP_25 VALUES ('100007', '�ڼ���', '����ŬƩ��'    , 65000000, 'D104');
INSERT INTO TB_EMP_25 VALUES ('100008', '�輺��', '���¼ҽ�Ʃ��'  , 60000000, 'D104');

INSERT INTO TB_EMP_25 VALUES ('100009', '�߻��', '��������'      , 35000000, 'D105');
INSERT INTO TB_EMP_25 VALUES ('100010', '�ڳ���', '�ڹٰ�����'    , 30000000, 'D105');

COMMIT;


--<SQL��>
SELECT B.DEPT_NM
     , AVG(A.CUR_SAL) AS CUR_SAL
  FROM TB_EMP_25 A
     , TB_DEPT_25 B
 WHERE A.DEPT_CD = B.DEPT_CD
 GROUP BY ROLLUP (B.DEPT_NM) --DEPT_NM���� ������ 5��, ��ü��� 1�� => �� 6��
;


-----------------------------------------------------------------------------------------------------------------------------------------------------

--����26

DROP TABLE TB_EMP_26 ;
DROP TABLE TB_DEPT_26 ;

CREATE TABLE TB_DEPT_26
(
  DEPT_CD CHAR(4)
, DEPT_NM VARCHAR2(150) NOT NULL
, CONSTRAINT TB_DEPT_26_PK PRIMARY KEY(DEPT_CD)
)
;


CREATE TABLE TB_EMP_26
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, JOB_NM VARCHAR2(150) NULL
, CUR_SAL NUMBER
, DEPT_CD CHAR(4)
, CONSTRAINT TB_EMP_26_PK PRIMARY KEY(EMP_NO)
)
;

ALTER TABLE TB_EMP_26
ADD CONSTRAINT TB_EMP_26_FK FOREIGN KEY (DEPT_CD) REFERENCES TB_DEPT_26(DEPT_CD);

INSERT INTO TB_DEPT_26 VALUES ('D101', '�����Ͱ�����');
INSERT INTO TB_DEPT_26 VALUES ('D102', '�������÷�����');
INSERT INTO TB_DEPT_26 VALUES ('D103', '�����ͻ��̾���');
INSERT INTO TB_DEPT_26 VALUES ('D104', '�����ͼ�����');
INSERT INTO TB_DEPT_26 VALUES ('D105', '�����͸��̱׷��̼���');

COMMIT;

INSERT INTO TB_EMP_26 VALUES ('100001', '�̰��', 'SQL������', 45000000, 'D101');
INSERT INTO TB_EMP_26 VALUES ('100002', '�̵���', 'SQL������', 40000000, 'D101');

INSERT INTO TB_EMP_26 VALUES ('100003', '��ö��', 'SQL������', 40000000, 'D102');
INSERT INTO TB_EMP_26 VALUES ('100004', '�ڻ���', 'SQL������', 35000000, 'D102');


INSERT INTO TB_EMP_26 VALUES ('100005', '������', 'SQL������', 50000000, 'D103');
INSERT INTO TB_EMP_26 VALUES ('100006', '��ٿ�', 'SQL������', 45000000, 'D103');


INSERT INTO TB_EMP_26 VALUES ('100007', '�ڼ���', 'SQL������', 65000000, 'D104');
INSERT INTO TB_EMP_26 VALUES ('100008', '�輺��', 'SQL������', 60000000, 'D104');

INSERT INTO TB_EMP_26 VALUES ('100009', '�߻��', 'SQL������', 35000000, 'D105');
INSERT INTO TB_EMP_26 VALUES ('100010', '�ڳ���', 'SQL������', 30000000, 'D105');

COMMIT;

--<SQL1>
SELECT A.JOB_NM
     , B.DEPT_NM
     , AVG(A.CUR_SAL) AS CUR_SAL
  FROM TB_EMP_26 A
     , TB_DEPT_26 B
WHERE A.DEPT_CD = B.DEPT_CD
GROUP BY ROLLUP(A.JOB_NM, B.DEPT_NM)
ORDER BY A.JOB_NM, B.DEPT_NM, CUR_SAL
;

--<SQL2>
SELECT A.JOB_NM
     , B.DEPT_NM
     , AVG(A.CUR_SAL) AS CUR_SAL
  FROM TB_EMP_26 A
     , TB_DEPT_26 B
WHERE A.DEPT_CD = B.DEPT_CD
GROUP BY GROUPING SETS((A.JOB_NM, B.DEPT_NM), A.JOB_NM, ())
ORDER BY A.JOB_NM, B.DEPT_NM, CUR_SAL
;


--<3�� ����>
SELECT A.JOB_NM
     , B.DEPT_NM
     , AVG(A.CUR_SAL) AS CUR_SAL
  FROM TB_EMP_26 A
     , TB_DEPT_26 B
WHERE A.DEPT_CD = B.DEPT_CD
GROUP BY ROLLUP(B.DEPT_NM, A.JOB_NM)
ORDER BY A.JOB_NM, B.DEPT_NM, CUR_SAL
;

SELECT A.JOB_NM
     , B.DEPT_NM
     , AVG(A.CUR_SAL) AS CUR_SAL
  FROM TB_EMP_26 A
     , TB_DEPT_26 B
WHERE A.DEPT_CD = B.DEPT_CD
GROUP BY GROUPING SETS((B.DEPT_NM, A.JOB_NM), B.DEPT_NM, ())
ORDER BY A.JOB_NM, B.DEPT_NM, CUR_SAL
;

-----------------------------------------------------------------------------------------------------------------------------------------------------
		
--����28

DROP TABLE TB_EMP_28 ;

CREATE TABLE TB_EMP_28
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, JOB_NM VARCHAR2(150) NULL
, CUR_SAL NUMBER
, DEPT_CD CHAR(4)
, CONSTRAINT TB_EMP_28_PK PRIMARY KEY(EMP_NO)
)
;

INSERT INTO TB_EMP_28 VALUES ('100001', '�̰��', 'SQL������', 45000000, 'D101');
INSERT INTO TB_EMP_28 VALUES ('100002', '�̵���', 'SQL������', 40000000, 'D101');

INSERT INTO TB_EMP_28 VALUES ('100003', '��ö��', 'SQL������', 40000000, 'D102');
INSERT INTO TB_EMP_28 VALUES ('100004', '�ڻ���', 'SQL������', 35000000, 'D102');


INSERT INTO TB_EMP_28 VALUES ('100005', '������', 'SQL������', 50000000, 'D103');
INSERT INTO TB_EMP_28 VALUES ('100006', '��ٿ�', 'SQL������', 45000000, 'D103');


INSERT INTO TB_EMP_28 VALUES ('100007', '�ڼ���', 'SQL������', 65000000, 'D104');
INSERT INTO TB_EMP_28 VALUES ('100008', '�輺��', 'SQL������', 60000000, 'D104');

INSERT INTO TB_EMP_28 VALUES ('100009', '�߻��', 'SQL������', 35000000, 'D105');
INSERT INTO TB_EMP_28 VALUES ('100010', '�ڳ���', 'SQL������', 30000000, 'D105');

COMMIT;

--<SQL��>
SELECT SUM(DENSE_RANK_CUR_SAL) SUM_DENSE_RANK_CUR_SAL
  FROM
(
SELECT DISTINCT DENSE_RANK() OVER (ORDER BY CUR_SAL) DENSE_RANK_CUR_SAL --���ϼ����� �ϳ��� ����� ����Ѵ�. 
    FROM TB_EMP_28                                                      --�� 10���� �ְ� �ߺ��� ������ 3���̴�.(4500��, 4000��, 3500��) �� ����� 1, 2, 3, 4, 5, 6, 7�� ����
)                                                                       --��� ���ϸ� 28�� ����
;

-----------------------------------------------------------------------------------------------------------------------------------------------------
		
--����29

DROP TABLE TB_EMP_29;

CREATE TABLE TB_EMP_29
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, SEX_CD CHAR(1)
, BIRTH_DE CHAR(8) NOT NULL
, DEPT_CD CHAR(4)
)
;

ALTER TABLE TB_EMP_29
ADD CONSTRAINT TB_EMP_29_PK PRIMARY KEY (EMP_NO);

INSERT INTO TB_EMP_29 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00001', '�̰��', '1', '19840718', 'D001');
INSERT INTO TB_EMP_29 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00002', '�̼���', '2', '19940502', 'D001');
INSERT INTO TB_EMP_29 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00003', '�ڰ��', '1', '19830414', 'D002');
INSERT INTO TB_EMP_29 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00004', '���ֿ�', '2', '19920508', 'D002');
INSERT INTO TB_EMP_29 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00005', '��ö��', '1', '19860112', 'D003');
INSERT INTO TB_EMP_29 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00006', '������', '2', '19960218', 'D003');
INSERT INTO TB_EMP_29 (EMP_NO, EMP_NM, SEX_CD, BIRTH_DE, DEPT_CD) VALUES ('E00007', '������', '2', '19980218',  NULL );

COMMIT;

--<SQL��>
SELECT EMP_NO, EMP_NM, COUNT(DEPT_CD) OVER(PARTITION BY SEX_CD) AS CNT --������ '1'�� ������ �μ��� 'D001', 'D002', 'D003'�� �� 3��
  FROM TB_EMP_29;                                                      --������ '2'�� ������ �μ��� 'D001', 'D002', 'D003', NULL�� DEPT_CD�� ���ΰ� �Ǽ����� ���ܵǼ� 3��
--��� CNT�� 3���� ����  
	
	
--����30

DROP TABLE TB_EMP_30;

CREATE TABLE TB_EMP_30
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50) NOT NULL
, JOB_NM VARCHAR2(150) NULL
, CUR_SAL NUMBER
, DEPT_CD CHAR(4)
, CONSTRAINT TB_EMP_30_PK PRIMARY KEY(EMP_NO)
)
;


INSERT INTO TB_EMP_30 VALUES ('100001', '�̰��', 'SQL������'     , 80000000, 'D101');
INSERT INTO TB_EMP_30 VALUES ('100002', '�̵���', '���ν���������', 60000000, 'D101');

INSERT INTO TB_EMP_30 VALUES ('100003', '��ö��', '�����������Ͼ�', 40000000, 'D102');
INSERT INTO TB_EMP_30 VALUES ('100004', '�ڻ���', '�����쿣���Ͼ�', 20000000, 'D102');

COMMIT;

--<SQL��>

SELECT SUM(CUR_SAL)/10000 --1�� ������ 1�� = 10000
 FROM
    (
      SELECT A.EMP_NO
           , A.EMP_NM
           , LAG(CUR_SAL) OVER(ORDER BY CUR_SAL) AS LAG_CUR_SAL 
           , LEAD(CUR_SAL) OVER(ORDER BY CUR_SAL) AS LEAD_CUR_SAL 
           , CUR_SAL
        FROM TB_EMP_30 A
       ORDER BY A.EMP_NO
    ) A
WHERE LAG_CUR_SAL IS NULL
   OR LEAD_CUR_SAL IS NULL
;

			
--����31

CONN SYSTEM/1234  --��

CREATE USER DCL IDENTIFIED BY 1234; --��
GRANT CONNECT, RESOURCE, DBA TO DCL; --��

CONN DCL/1234 --��

CREATE TABLE DCL_TABLE_31 --��
(
    DCL_COL1 NUMBER
)
;

INSERT INTO DCL_TABLE_31 VALUES (1); --��

COMMIT; --��

CONN SYSTEM/1234 --��
DROP USER DCL; --��   --CASCADE�� ��� ���� ���� �Ұ�
	  
-----------------------------------------------------------------------------------------------------------------------------------------------------

--����34

DROP TABLE TB_EMP_34;

CREATE TABLE TB_EMP_34
(
  EMP_NO CHAR(6)
, EMP_NM VARCHAR2(50)
, DEPT_CD CHAR(4)
, CONSTRAINT TB_EMP_34_PK PRIMARY KEY(EMP_NO)
)
;

INSERT INTO TB_EMP_34 VALUES ('100001', '�̰��', 'D101' );
INSERT INTO TB_EMP_34 VALUES ('100002', '�̼���', 'D101' );
INSERT INTO TB_EMP_34 VALUES ('100003', '�Ǽ�ö', 'D102' );
INSERT INTO TB_EMP_34 VALUES ('100004', '������', 'D102' );
INSERT INTO TB_EMP_34 VALUES ('100005', '������', 'D103' );
INSERT INTO TB_EMP_34 VALUES ('100006', '�迬��', NULL );

COMMIT;

DROP FUNCTION FN_EMP_CNT_BY_EMP_NM_34; 
CREATE OR REPLACE FUNCTION FN_EMP_CNT_BY_EMP_NM_34(IN_EMP_NM IN VARCHAR)
RETURN NUMBER IS V_EMP_CNT NUMBER;

BEGIN
SELECT COUNT(*) CNT
  INTO V_EMP_CNT
  FROM TB_EMP_34
 WHERE EMP_NM LIKE IN_EMP_NM || '%'
 ;

RETURN V_EMP_CNT;
END;
/
;

--<SQL��>

--���� '��'���ΰ� 3��, �׿ܴ� ���� 1�Ǿ�(�������ξ���) , '��'���� 3���� 3-1 = 2�� ����, �׿� 3���� 1-1 = 0�� ����
--������� 6�� ����
SELECT
      SUM(FN_EMP_CNT_BY_EMP_NM_34(SUBSTR(A.EMP_NM, 1, 1)) - FN_EMP_CNT_BY_EMP_NM_34(A.EMP_NM)) AS CNT_SUM
  FROM TB_EMP_34 A
ORDER BY A.EMP_NO
;
			