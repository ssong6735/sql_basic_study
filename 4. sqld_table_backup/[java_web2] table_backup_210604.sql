--------------------------------------------------------
--  ������ ������ - �ݿ���-6��-04-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "JAVA_WEB2"."SEQ_BOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 341 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DVD_MOVIE
--------------------------------------------------------

   CREATE SEQUENCE  "JAVA_WEB2"."SEQ_DVD_MOVIE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DVD_USER
--------------------------------------------------------

   CREATE SEQUENCE  "JAVA_WEB2"."SEQ_DVD_USER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NURI_CHANNEL
--------------------------------------------------------

   CREATE SEQUENCE  "JAVA_WEB2"."SEQ_NURI_CHANNEL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REPLY
--------------------------------------------------------

   CREATE SEQUENCE  "JAVA_WEB2"."SEQ_REPLY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RMBOARD
--------------------------------------------------------

   CREATE SEQUENCE  "JAVA_WEB2"."SEQ_RMBOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 261 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SCORE
--------------------------------------------------------

   CREATE SEQUENCE  "JAVA_WEB2"."SEQ_SCORE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "JAVA_WEB2"."BOARD" 
   (	"BOARD_NO" NUMBER(10,0), 
	"WRITER" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"VIEW_CNT" NUMBER(10,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DVD_MOVIE
--------------------------------------------------------

  CREATE TABLE "JAVA_WEB2"."DVD_MOVIE" 
   (	"SERIAL_NUMBER" NUMBER(10,0), 
	"MOVIE_NAME" VARCHAR2(50 BYTE), 
	"NATION" VARCHAR2(20 BYTE), 
	"PUB_YEAR" CHAR(4 BYTE), 
	"CHARGE" NUMBER(5,0), 
	"RENTAL" CHAR(1 BYTE) DEFAULT 'F', 
	"USER_NUMBER" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DVD_USER
--------------------------------------------------------

  CREATE TABLE "JAVA_WEB2"."DVD_USER" 
   (	"USER_NUMBER" NUMBER(10,0), 
	"USER_NAME" VARCHAR2(10 BYTE), 
	"PHONE_NUMBER" VARCHAR2(13 BYTE), 
	"TOTAL_PAYING" NUMBER(10,0) DEFAULT 0, 
	"GRADE" VARCHAR2(10 BYTE) DEFAULT 'BRONZE'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "JAVA_WEB2"."MEMBER" 
   (	"ACCOUNT" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(150 BYTE), 
	"NAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"AUTH" VARCHAR2(20 BYTE) DEFAULT 'COMMON', 
	"REG_DATE" DATE DEFAULT SYSDATE, 
	"SESSION_ID" VARCHAR2(200 BYTE) DEFAULT 'none', 
	"LIMIT_TIME" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NURI_CHANNEL
--------------------------------------------------------

  CREATE TABLE "JAVA_WEB2"."NURI_CHANNEL" 
   (	"CHANNEL_NO" NUMBER(10,0), 
	"CHANNEL_NAME" VARCHAR2(20 BYTE), 
	"CHANNEL_INFO" VARCHAR2(100 BYTE), 
	"ADMIN_USER_NO" NUMBER(10,0), 
	"CHANNEL_PW" VARCHAR2(20 BYTE), 
	"REG_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RMBOARD
--------------------------------------------------------

  CREATE TABLE "JAVA_WEB2"."RMBOARD" 
   (	"RES_NUM" NUMBER(10,0), 
	"RES_NAME" VARCHAR2(50 BYTE), 
	"TEL_NUMBER" VARCHAR2(50 BYTE), 
	"MENUS" VARCHAR2(2000 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SCORE
--------------------------------------------------------

  CREATE TABLE "JAVA_WEB2"."SCORE" 
   (	"STU_NUM" NUMBER(10,0), 
	"STU_NAME" VARCHAR2(20 BYTE), 
	"KOR" NUMBER(3,0), 
	"ENG" NUMBER(3,0), 
	"MATH" NUMBER(3,0), 
	"TOTAL" NUMBER(3,0), 
	"AVERAGE" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_REPLY
--------------------------------------------------------

  CREATE TABLE "JAVA_WEB2"."TBL_REPLY" 
   (	"REPLY_NO" NUMBER(10,0), 
	"BOARD_NO" NUMBER(10,0), 
	"REPLY_TEXT" VARCHAR2(1000 BYTE), 
	"REPLY_WRITER" VARCHAR2(50 BYTE), 
	"REPLY_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JAVA_WEB2.BOARD
SET DEFINE OFF;
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (21,'USER1','�׽�Ʈ����1','�׽�Ʈ �����Դϴ�.1',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (8,'���� ','���� test������������','������������fkljkasd
��
��
������

',4);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (12,'�Ф�','�ƾ� ��ƴ� �Ф�123','���ϾƷ��Ӹ��𸮤�����
�����ʶ�Ӹۤ�������
�ӳ��̷����Ӥ��ʶ�Ӥ�',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (11,'�質��','�ȳ��ϼ���','������
��
������
��
������
',2);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (13,'���ƾƾ�','���� �ٽ� �׽�Ʈ','�Ф̤Ф̤Ф̤�''��
����
��
����
��
����
',2);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (22,'USER2','�׽�Ʈ����2','�׽�Ʈ �����Դϴ�.2',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (23,'USER3','�׽�Ʈ����3','�׽�Ʈ �����Դϴ�.3',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (24,'USER4','�׽�Ʈ����4','�׽�Ʈ �����Դϴ�.4',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (25,'USER5','�׽�Ʈ����5','�׽�Ʈ �����Դϴ�.5',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (26,'USER6','�׽�Ʈ����6','�׽�Ʈ �����Դϴ�.6',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (27,'USER7','�׽�Ʈ����7','�׽�Ʈ �����Դϴ�.7',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (28,'USER8','�׽�Ʈ����8','�׽�Ʈ �����Դϴ�.8',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (29,'USER9','�׽�Ʈ����9','�׽�Ʈ �����Դϴ�.9',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (30,'USER10','�׽�Ʈ����10','�׽�Ʈ �����Դϴ�.10',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (31,'USER11','�׽�Ʈ����11','�׽�Ʈ �����Դϴ�.11',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (32,'USER12','�׽�Ʈ����12','�׽�Ʈ �����Դϴ�.12',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (33,'USER13','�׽�Ʈ����13','�׽�Ʈ �����Դϴ�.13',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (34,'USER14','�׽�Ʈ����14','�׽�Ʈ �����Դϴ�.14',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (35,'USER15','�׽�Ʈ����15','�׽�Ʈ �����Դϴ�.15',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (36,'USER16','�׽�Ʈ����16','�׽�Ʈ �����Դϴ�.16',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (37,'USER17','�׽�Ʈ����17','�׽�Ʈ �����Դϴ�.17',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (38,'USER18','�׽�Ʈ����18','�׽�Ʈ �����Դϴ�.18',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (39,'USER19','�׽�Ʈ����19','�׽�Ʈ �����Դϴ�.19',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (40,'USER20','�׽�Ʈ����20','�׽�Ʈ �����Դϴ�.20',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (41,'USER21','�׽�Ʈ����21','�׽�Ʈ �����Դϴ�.21',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (42,'USER22','�׽�Ʈ����22','�׽�Ʈ �����Դϴ�.22',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (43,'USER23','�׽�Ʈ����23','�׽�Ʈ �����Դϴ�.23',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (44,'USER24','�׽�Ʈ����24','�׽�Ʈ �����Դϴ�.24',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (45,'USER25','�׽�Ʈ����25','�׽�Ʈ �����Դϴ�.25',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (46,'USER26','�׽�Ʈ����26','�׽�Ʈ �����Դϴ�.26',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (47,'USER27','�׽�Ʈ����27','�׽�Ʈ �����Դϴ�.27',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (48,'USER28','�׽�Ʈ����28','�׽�Ʈ �����Դϴ�.28',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (49,'USER29','�׽�Ʈ����29','�׽�Ʈ �����Դϴ�.29',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (50,'USER30','�׽�Ʈ����30','�׽�Ʈ �����Դϴ�.30',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (51,'USER31','�׽�Ʈ����31','�׽�Ʈ �����Դϴ�.31',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (52,'USER32','�׽�Ʈ����32','�׽�Ʈ �����Դϴ�.32',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (53,'USER33','�׽�Ʈ����33','�׽�Ʈ �����Դϴ�.33',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (54,'USER34','�׽�Ʈ����34','�׽�Ʈ �����Դϴ�.34',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (55,'USER35','�׽�Ʈ����35','�׽�Ʈ �����Դϴ�.35',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (56,'USER36','�׽�Ʈ����36','�׽�Ʈ �����Դϴ�.36',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (57,'USER37','�׽�Ʈ����37','�׽�Ʈ �����Դϴ�.37',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (58,'USER38','�׽�Ʈ����38','�׽�Ʈ �����Դϴ�.38',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (59,'USER39','�׽�Ʈ����39','�׽�Ʈ �����Դϴ�.39',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (60,'USER40','�׽�Ʈ����40','�׽�Ʈ �����Դϴ�.40',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (61,'USER41','�׽�Ʈ����41','�׽�Ʈ �����Դϴ�.41',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (62,'USER42','�׽�Ʈ����42','�׽�Ʈ �����Դϴ�.42',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (63,'USER43','�׽�Ʈ����43','�׽�Ʈ �����Դϴ�.43',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (64,'USER44','�׽�Ʈ����44','�׽�Ʈ �����Դϴ�.44',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (65,'USER45','�׽�Ʈ����45','�׽�Ʈ �����Դϴ�.45',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (66,'USER46','�׽�Ʈ����46','�׽�Ʈ �����Դϴ�.46',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (67,'USER47','�׽�Ʈ����47','�׽�Ʈ �����Դϴ�.47',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (68,'USER48','�׽�Ʈ����48','�׽�Ʈ �����Դϴ�.48',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (69,'USER49','�׽�Ʈ����49','�׽�Ʈ �����Դϴ�.49',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (70,'USER50','�׽�Ʈ����50','�׽�Ʈ �����Դϴ�.50',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (71,'USER51','�׽�Ʈ����51','�׽�Ʈ �����Դϴ�.51',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (72,'USER52','�׽�Ʈ����52','�׽�Ʈ �����Դϴ�.52',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (73,'USER53','�׽�Ʈ����53','�׽�Ʈ �����Դϴ�.53',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (74,'USER54','�׽�Ʈ����54','�׽�Ʈ �����Դϴ�.54',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (75,'USER55','�׽�Ʈ����55','�׽�Ʈ �����Դϴ�.55',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (76,'USER56','�׽�Ʈ����56','�׽�Ʈ �����Դϴ�.56',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (77,'USER57','�׽�Ʈ����57','�׽�Ʈ �����Դϴ�.57',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (78,'USER58','�׽�Ʈ����58','�׽�Ʈ �����Դϴ�.58',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (79,'USER59','�׽�Ʈ����59','�׽�Ʈ �����Դϴ�.59',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (80,'USER60','�׽�Ʈ����60','�׽�Ʈ �����Դϴ�.60',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (81,'USER61','�׽�Ʈ����61','�׽�Ʈ �����Դϴ�.61',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (82,'USER62','�׽�Ʈ����62','�׽�Ʈ �����Դϴ�.62',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (83,'USER63','�׽�Ʈ����63','�׽�Ʈ �����Դϴ�.63',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (84,'USER64','�׽�Ʈ����64','�׽�Ʈ �����Դϴ�.64',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (85,'USER65','�׽�Ʈ����65','�׽�Ʈ �����Դϴ�.65',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (86,'USER66','�׽�Ʈ����66','�׽�Ʈ �����Դϴ�.66',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (87,'USER67','�׽�Ʈ����67','�׽�Ʈ �����Դϴ�.67',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (88,'USER68','�׽�Ʈ����68','�׽�Ʈ �����Դϴ�.68',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (89,'USER69','�׽�Ʈ����69','�׽�Ʈ �����Դϴ�.69',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (90,'USER70','�׽�Ʈ����70','�׽�Ʈ �����Դϴ�.70',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (91,'USER71','�׽�Ʈ����71','�׽�Ʈ �����Դϴ�.71',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (92,'USER72','�׽�Ʈ����72','�׽�Ʈ �����Դϴ�.72',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (93,'USER73','�׽�Ʈ����73','�׽�Ʈ �����Դϴ�.73',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (94,'USER74','�׽�Ʈ����74','�׽�Ʈ �����Դϴ�.74',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (95,'USER75','�׽�Ʈ����75','�׽�Ʈ �����Դϴ�.75',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (96,'USER76','�׽�Ʈ����76','�׽�Ʈ �����Դϴ�.76',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (97,'USER77','�׽�Ʈ����77','�׽�Ʈ �����Դϴ�.77',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (98,'USER78','�׽�Ʈ����78','�׽�Ʈ �����Դϴ�.78',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (99,'USER79','�׽�Ʈ����79','�׽�Ʈ �����Դϴ�.79',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (100,'USER80','�׽�Ʈ����80','�׽�Ʈ �����Դϴ�.80',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (101,'USER81','�׽�Ʈ����81','�׽�Ʈ �����Դϴ�.81',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (102,'USER82','�׽�Ʈ����82','�׽�Ʈ �����Դϴ�.82',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (103,'USER83','�׽�Ʈ����83','�׽�Ʈ �����Դϴ�.83',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (104,'USER84','�׽�Ʈ����84','�׽�Ʈ �����Դϴ�.84',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (105,'USER85','�׽�Ʈ����85','�׽�Ʈ �����Դϴ�.85',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (106,'USER86','�׽�Ʈ����86','�׽�Ʈ �����Դϴ�.86',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (107,'USER87','�׽�Ʈ����87','�׽�Ʈ �����Դϴ�.87',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (108,'USER88','�׽�Ʈ����88','�׽�Ʈ �����Դϴ�.88',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (109,'USER89','�׽�Ʈ����89','�׽�Ʈ �����Դϴ�.89',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (110,'USER90','�׽�Ʈ����90','�׽�Ʈ �����Դϴ�.90',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (111,'USER91','�׽�Ʈ����91','�׽�Ʈ �����Դϴ�.91',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (112,'USER92','�׽�Ʈ����92','�׽�Ʈ �����Դϴ�.92',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (113,'USER93','�׽�Ʈ����93','�׽�Ʈ �����Դϴ�.93',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (114,'USER94','�׽�Ʈ����94','�׽�Ʈ �����Դϴ�.94',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (115,'USER95','�׽�Ʈ����95','�׽�Ʈ �����Դϴ�.95',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (116,'USER96','�׽�Ʈ����96','�׽�Ʈ �����Դϴ�.96',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (117,'USER97','�׽�Ʈ����97','�׽�Ʈ �����Դϴ�.97',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (118,'USER98','�׽�Ʈ����98','�׽�Ʈ �����Դϴ�.98',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (119,'USER99','�׽�Ʈ����99','�׽�Ʈ �����Դϴ�.99',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (120,'USER100','�׽�Ʈ����100','�׽�Ʈ �����Դϴ�.100',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (121,'USER101','�׽�Ʈ����101','�׽�Ʈ �����Դϴ�.101',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (122,'USER102','�׽�Ʈ����102','�׽�Ʈ �����Դϴ�.102',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (123,'USER103','�׽�Ʈ����103','�׽�Ʈ �����Դϴ�.103',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (124,'USER104','�׽�Ʈ����104','�׽�Ʈ �����Դϴ�.104',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (125,'USER105','�׽�Ʈ����105','�׽�Ʈ �����Դϴ�.105',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (126,'USER106','�׽�Ʈ����106','�׽�Ʈ �����Դϴ�.106',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (127,'USER107','�׽�Ʈ����107','�׽�Ʈ �����Դϴ�.107',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (128,'USER108','�׽�Ʈ����108','�׽�Ʈ �����Դϴ�.108',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (129,'USER109','�׽�Ʈ����109','�׽�Ʈ �����Դϴ�.109',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (130,'USER110','�׽�Ʈ����110','�׽�Ʈ �����Դϴ�.110',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (131,'USER111','�׽�Ʈ����111','�׽�Ʈ �����Դϴ�.111',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (132,'USER112','�׽�Ʈ����112','�׽�Ʈ �����Դϴ�.112',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (133,'USER113','�׽�Ʈ����113','�׽�Ʈ �����Դϴ�.113',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (134,'USER114','�׽�Ʈ����114','�׽�Ʈ �����Դϴ�.114',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (135,'USER115','�׽�Ʈ����115','�׽�Ʈ �����Դϴ�.115',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (136,'USER116','�׽�Ʈ����116','�׽�Ʈ �����Դϴ�.116',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (137,'USER117','�׽�Ʈ����117','�׽�Ʈ �����Դϴ�.117',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (138,'USER118','�׽�Ʈ����118','�׽�Ʈ �����Դϴ�.118',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (139,'USER119','�׽�Ʈ����119','�׽�Ʈ �����Դϴ�.119',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (140,'USER120','�׽�Ʈ����120','�׽�Ʈ �����Դϴ�.120',2);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (141,'USER121','�׽�Ʈ����121','�׽�Ʈ �����Դϴ�.121',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (142,'USER122','�׽�Ʈ����122','�׽�Ʈ �����Դϴ�.122',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (143,'USER123','�׽�Ʈ����123','�׽�Ʈ �����Դϴ�.123',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (144,'USER124','�׽�Ʈ����124','�׽�Ʈ �����Դϴ�.124',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (145,'USER125','�׽�Ʈ����125','�׽�Ʈ �����Դϴ�.125',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (146,'USER126','�׽�Ʈ����126','�׽�Ʈ �����Դϴ�.126',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (147,'USER127','�׽�Ʈ����127','�׽�Ʈ �����Դϴ�.127',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (148,'USER128','�׽�Ʈ����128','�׽�Ʈ �����Դϴ�.128',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (149,'USER129','�׽�Ʈ����129','�׽�Ʈ �����Դϴ�.129',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (150,'USER130','�׽�Ʈ����130','�׽�Ʈ �����Դϴ�.130',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (151,'USER131','�׽�Ʈ����131','�׽�Ʈ �����Դϴ�.131',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (152,'USER132','�׽�Ʈ����132','�׽�Ʈ �����Դϴ�.132',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (153,'USER133','�׽�Ʈ����133','�׽�Ʈ �����Դϴ�.133',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (154,'USER134','�׽�Ʈ����134','�׽�Ʈ �����Դϴ�.134',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (155,'USER135','�׽�Ʈ����135','�׽�Ʈ �����Դϴ�.135',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (156,'USER136','�׽�Ʈ����136','�׽�Ʈ �����Դϴ�.136',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (157,'USER137','�׽�Ʈ����137','�׽�Ʈ �����Դϴ�.137',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (158,'USER138','�׽�Ʈ����138','�׽�Ʈ �����Դϴ�.138',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (159,'USER139','�׽�Ʈ����139','�׽�Ʈ �����Դϴ�.139',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (160,'USER140','�׽�Ʈ����140','�׽�Ʈ �����Դϴ�.140',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (161,'USER141','�׽�Ʈ����141','�׽�Ʈ �����Դϴ�.141',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (162,'USER142','�׽�Ʈ����142','�׽�Ʈ �����Դϴ�.142',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (163,'USER143','�׽�Ʈ����143','�׽�Ʈ �����Դϴ�.143',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (164,'USER144','�׽�Ʈ����144','�׽�Ʈ �����Դϴ�.144',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (165,'USER145','�׽�Ʈ����145','�׽�Ʈ �����Դϴ�.145',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (166,'USER146','�׽�Ʈ����146','�׽�Ʈ �����Դϴ�.146',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (167,'USER147','�׽�Ʈ����147','�׽�Ʈ �����Դϴ�.147',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (168,'USER148','�׽�Ʈ����148','�׽�Ʈ �����Դϴ�.148',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (169,'USER149','�׽�Ʈ����149','�׽�Ʈ �����Դϴ�.149',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (170,'USER150','�׽�Ʈ����150','�׽�Ʈ �����Դϴ�.150',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (171,'USER151','�׽�Ʈ����151','�׽�Ʈ �����Դϴ�.151',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (172,'USER152','�׽�Ʈ����152','�׽�Ʈ �����Դϴ�.152',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (173,'USER153','�׽�Ʈ����153','�׽�Ʈ �����Դϴ�.153',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (174,'USER154','�׽�Ʈ����154','�׽�Ʈ �����Դϴ�.154',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (175,'USER155','�׽�Ʈ����155','�׽�Ʈ �����Դϴ�.155',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (176,'USER156','�׽�Ʈ����156','�׽�Ʈ �����Դϴ�.156',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (177,'USER157','�׽�Ʈ����157','�׽�Ʈ �����Դϴ�.157',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (178,'USER158','�׽�Ʈ����158','�׽�Ʈ �����Դϴ�.158',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (179,'USER159','�׽�Ʈ����159','�׽�Ʈ �����Դϴ�.159',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (180,'USER160','�׽�Ʈ����160','�׽�Ʈ �����Դϴ�.160',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (181,'USER161','�׽�Ʈ����161','�׽�Ʈ �����Դϴ�.161',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (182,'USER162','�׽�Ʈ����162','�׽�Ʈ �����Դϴ�.162',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (183,'USER163','�׽�Ʈ����163','�׽�Ʈ �����Դϴ�.163',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (184,'USER164','�׽�Ʈ����164','�׽�Ʈ �����Դϴ�.164',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (185,'USER165','�׽�Ʈ����165','�׽�Ʈ �����Դϴ�.165',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (186,'USER166','�׽�Ʈ����166','�׽�Ʈ �����Դϴ�.166',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (187,'USER167','�׽�Ʈ����167','�׽�Ʈ �����Դϴ�.167',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (188,'USER168','�׽�Ʈ����168','�׽�Ʈ �����Դϴ�.168',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (189,'USER169','�׽�Ʈ����169','�׽�Ʈ �����Դϴ�.169',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (190,'USER170','�׽�Ʈ����170','�׽�Ʈ �����Դϴ�.170',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (191,'USER171','�׽�Ʈ����171','�׽�Ʈ �����Դϴ�.171',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (192,'USER172','�׽�Ʈ����172','�׽�Ʈ �����Դϴ�.172',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (193,'USER173','�׽�Ʈ����173','�׽�Ʈ �����Դϴ�.173',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (194,'USER174','�׽�Ʈ����174','�׽�Ʈ �����Դϴ�.174',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (195,'USER175','�׽�Ʈ����175','�׽�Ʈ �����Դϴ�.175',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (196,'USER176','�׽�Ʈ����176','�׽�Ʈ �����Դϴ�.176',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (197,'USER177','�׽�Ʈ����177','�׽�Ʈ �����Դϴ�.177',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (198,'USER178','�׽�Ʈ����178','�׽�Ʈ �����Դϴ�.178',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (199,'USER179','�׽�Ʈ����179','�׽�Ʈ �����Դϴ�.179',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (200,'USER180','�׽�Ʈ����180','�׽�Ʈ �����Դϴ�.180',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (201,'USER181','�׽�Ʈ����181','�׽�Ʈ �����Դϴ�.181',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (202,'USER182','�׽�Ʈ����182','�׽�Ʈ �����Դϴ�.182',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (203,'USER183','�׽�Ʈ����183','�׽�Ʈ �����Դϴ�.183',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (204,'USER184','�׽�Ʈ����184','�׽�Ʈ �����Դϴ�.184',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (205,'USER185','�׽�Ʈ����185','�׽�Ʈ �����Դϴ�.185',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (206,'USER186','�׽�Ʈ����186','�׽�Ʈ �����Դϴ�.186',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (207,'USER187','�׽�Ʈ����187','�׽�Ʈ �����Դϴ�.187',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (208,'USER188','�׽�Ʈ����188','�׽�Ʈ �����Դϴ�.188',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (209,'USER189','�׽�Ʈ����189','�׽�Ʈ �����Դϴ�.189',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (210,'USER190','�׽�Ʈ����190','�׽�Ʈ �����Դϴ�.190',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (211,'USER191','�׽�Ʈ����191','�׽�Ʈ �����Դϴ�.191',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (212,'USER192','�׽�Ʈ����192','�׽�Ʈ �����Դϴ�.192',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (213,'USER193','�׽�Ʈ����193','�׽�Ʈ �����Դϴ�.193',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (214,'USER194','�׽�Ʈ����194','�׽�Ʈ �����Դϴ�.194',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (215,'USER195','�׽�Ʈ����195','�׽�Ʈ �����Դϴ�.195',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (216,'USER196','�׽�Ʈ����196','�׽�Ʈ �����Դϴ�.196',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (217,'USER197','�׽�Ʈ����197','�׽�Ʈ �����Դϴ�.197',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (218,'USER198','�׽�Ʈ����198','�׽�Ʈ �����Դϴ�.198',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (219,'USER199','�׽�Ʈ����199','�׽�Ʈ �����Դϴ�.199',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (220,'USER200','�׽�Ʈ����200','�׽�Ʈ �����Դϴ�.200',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (221,'USER201','�׽�Ʈ����201','�׽�Ʈ �����Դϴ�.201',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (222,'USER202','�׽�Ʈ����202','�׽�Ʈ �����Դϴ�.202',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (223,'USER203','�׽�Ʈ����203','�׽�Ʈ �����Դϴ�.203',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (224,'USER204','�׽�Ʈ����204','�׽�Ʈ �����Դϴ�.204',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (225,'USER205','�׽�Ʈ����205','�׽�Ʈ �����Դϴ�.205',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (226,'USER206','�׽�Ʈ����206','�׽�Ʈ �����Դϴ�.206',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (227,'USER207','�׽�Ʈ����207','�׽�Ʈ �����Դϴ�.207',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (228,'USER208','�׽�Ʈ����208','�׽�Ʈ �����Դϴ�.208',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (229,'USER209','�׽�Ʈ����209','�׽�Ʈ �����Դϴ�.209',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (230,'USER210','�׽�Ʈ����210','�׽�Ʈ �����Դϴ�.210',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (231,'USER211','�׽�Ʈ����211','�׽�Ʈ �����Դϴ�.211',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (232,'USER212','�׽�Ʈ����212','�׽�Ʈ �����Դϴ�.212',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (233,'USER213','�׽�Ʈ����213','�׽�Ʈ �����Դϴ�.213',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (234,'USER214','�׽�Ʈ����214','�׽�Ʈ �����Դϴ�.214',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (235,'USER215','�׽�Ʈ����215','�׽�Ʈ �����Դϴ�.215',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (236,'USER216','�׽�Ʈ����216','�׽�Ʈ �����Դϴ�.216',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (237,'USER217','�׽�Ʈ����217','�׽�Ʈ �����Դϴ�.217',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (238,'USER218','�׽�Ʈ����218','�׽�Ʈ �����Դϴ�.218',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (239,'USER219','�׽�Ʈ����219','�׽�Ʈ �����Դϴ�.219',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (240,'USER220','�׽�Ʈ����220','�׽�Ʈ �����Դϴ�.220',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (241,'USER221','�׽�Ʈ����221','�׽�Ʈ �����Դϴ�.221',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (242,'USER222','�׽�Ʈ����222','�׽�Ʈ �����Դϴ�.222',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (243,'USER223','�׽�Ʈ����223','�׽�Ʈ �����Դϴ�.223',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (244,'USER224','�׽�Ʈ����224','�׽�Ʈ �����Դϴ�.224',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (245,'USER225','�׽�Ʈ����225','�׽�Ʈ �����Դϴ�.225',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (246,'USER226','�׽�Ʈ����226','�׽�Ʈ �����Դϴ�.226',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (247,'USER227','�׽�Ʈ����227','�׽�Ʈ �����Դϴ�.227',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (248,'USER228','�׽�Ʈ����228','�׽�Ʈ �����Դϴ�.228',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (249,'USER229','�׽�Ʈ����229','�׽�Ʈ �����Դϴ�.229',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (250,'USER230','�׽�Ʈ����230','�׽�Ʈ �����Դϴ�.230',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (251,'USER231','�׽�Ʈ����231','�׽�Ʈ �����Դϴ�.231',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (252,'USER232','�׽�Ʈ����232','�׽�Ʈ �����Դϴ�.232',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (253,'USER233','�׽�Ʈ����233','�׽�Ʈ �����Դϴ�.233',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (254,'USER234','�׽�Ʈ����234','�׽�Ʈ �����Դϴ�.234',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (255,'USER235','�׽�Ʈ����235','�׽�Ʈ �����Դϴ�.235',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (256,'USER236','�׽�Ʈ����236','�׽�Ʈ �����Դϴ�.236',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (257,'USER237','�׽�Ʈ����237','�׽�Ʈ �����Դϴ�.237',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (258,'USER238','�׽�Ʈ����238','�׽�Ʈ �����Դϴ�.238',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (259,'USER239','�׽�Ʈ����239','�׽�Ʈ �����Դϴ�.239',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (260,'USER240','�׽�Ʈ����240','�׽�Ʈ �����Դϴ�.240',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (261,'USER241','�׽�Ʈ����241','�׽�Ʈ �����Դϴ�.241',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (262,'USER242','�׽�Ʈ����242','�׽�Ʈ �����Դϴ�.242',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (263,'USER243','�׽�Ʈ����243','�׽�Ʈ �����Դϴ�.243',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (264,'USER244','�׽�Ʈ����244','�׽�Ʈ �����Դϴ�.244',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (265,'USER245','�׽�Ʈ����245','�׽�Ʈ �����Դϴ�.245',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (266,'USER246','�׽�Ʈ����246','�׽�Ʈ �����Դϴ�.246',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (267,'USER247','�׽�Ʈ����247','�׽�Ʈ �����Դϴ�.247',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (268,'USER248','�׽�Ʈ����248','�׽�Ʈ �����Դϴ�.248',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (269,'USER249','�׽�Ʈ����249','�׽�Ʈ �����Դϴ�.249',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (270,'USER250','�׽�Ʈ����250','�׽�Ʈ �����Դϴ�.250',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (271,'USER251','�׽�Ʈ����251','�׽�Ʈ �����Դϴ�.251',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (272,'USER252','�׽�Ʈ����252','�׽�Ʈ �����Դϴ�.252',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (273,'USER253','�׽�Ʈ����253','�׽�Ʈ �����Դϴ�.253',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (274,'USER254','�׽�Ʈ����254','�׽�Ʈ �����Դϴ�.254',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (275,'USER255','�׽�Ʈ����255','�׽�Ʈ �����Դϴ�.255',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (276,'USER256','�׽�Ʈ����256','�׽�Ʈ �����Դϴ�.256',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (277,'USER257','�׽�Ʈ����257','�׽�Ʈ �����Դϴ�.257',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (278,'USER258','�׽�Ʈ����258','�׽�Ʈ �����Դϴ�.258',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (279,'USER259','�׽�Ʈ����259','�׽�Ʈ �����Դϴ�.259',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (280,'USER260','�׽�Ʈ����260','�׽�Ʈ �����Դϴ�.260',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (281,'USER261','�׽�Ʈ����261','�׽�Ʈ �����Դϴ�.261',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (282,'USER262','�׽�Ʈ����262','�׽�Ʈ �����Դϴ�.262',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (283,'USER263','�׽�Ʈ����263','�׽�Ʈ �����Դϴ�.263',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (284,'USER264','�׽�Ʈ����264','�׽�Ʈ �����Դϴ�.264',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (285,'USER265','�׽�Ʈ����265','�׽�Ʈ �����Դϴ�.265',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (286,'USER266','�׽�Ʈ����266','�׽�Ʈ �����Դϴ�.266',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (287,'USER267','�׽�Ʈ����267','�׽�Ʈ �����Դϴ�.267',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (288,'USER268','�׽�Ʈ����268','�׽�Ʈ �����Դϴ�.268',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (289,'USER269','�׽�Ʈ����269','�׽�Ʈ �����Դϴ�.269',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (290,'USER270','�׽�Ʈ����270','�׽�Ʈ �����Դϴ�.270',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (291,'USER271','�׽�Ʈ����271','�׽�Ʈ �����Դϴ�.271',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (292,'USER272','�׽�Ʈ����272','�׽�Ʈ �����Դϴ�.272',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (293,'USER273','�׽�Ʈ����273','�׽�Ʈ �����Դϴ�.273',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (294,'USER274','�׽�Ʈ����274','�׽�Ʈ �����Դϴ�.274',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (295,'USER275','�׽�Ʈ����275','�׽�Ʈ �����Դϴ�.275',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (296,'USER276','�׽�Ʈ����276','�׽�Ʈ �����Դϴ�.276',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (297,'USER277','�׽�Ʈ����277','�׽�Ʈ �����Դϴ�.277',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (298,'USER278','�׽�Ʈ����278','�׽�Ʈ �����Դϴ�.278',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (299,'USER279','�׽�Ʈ����279','�׽�Ʈ �����Դϴ�.279',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (300,'USER280','�׽�Ʈ����280','�׽�Ʈ �����Դϴ�.280',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (301,'USER281','�׽�Ʈ����281','�׽�Ʈ �����Դϴ�.281',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (302,'USER282','�׽�Ʈ����282','�׽�Ʈ �����Դϴ�.282',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (303,'USER283','�׽�Ʈ����283','�׽�Ʈ �����Դϴ�.283',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (304,'USER284','�׽�Ʈ����284','�׽�Ʈ �����Դϴ�.284',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (305,'USER285','�׽�Ʈ����285','�׽�Ʈ �����Դϴ�.285',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (306,'USER286','�׽�Ʈ����286','�׽�Ʈ �����Դϴ�.286',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (307,'USER287','�׽�Ʈ����287','�׽�Ʈ �����Դϴ�.287',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (308,'USER288','�׽�Ʈ����288','�׽�Ʈ �����Դϴ�.288',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (309,'USER289','�׽�Ʈ����289','�׽�Ʈ �����Դϴ�.289',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (310,'USER290','�׽�Ʈ����290','�׽�Ʈ �����Դϴ�.290',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (311,'USER291','�׽�Ʈ����291','�׽�Ʈ �����Դϴ�.291',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (312,'USER292','�׽�Ʈ����292','�׽�Ʈ �����Դϴ�.292',0);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (313,'USER293','�׽�Ʈ����293','�׽�Ʈ �����Դϴ�.293',4);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (314,'USER294','�׽�Ʈ����294','�׽�Ʈ �����Դϴ�.294',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (315,'USER295','�׽�Ʈ����295','�׽�Ʈ �����Դϴ�.295',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (316,'USER296','�׽�Ʈ����296','�׽�Ʈ �����Դϴ�.296',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (317,'USER297','�׽�Ʈ����297','�׽�Ʈ �����Դϴ�.297',1);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (318,'USER298','�׽�Ʈ����298','�׽�Ʈ �����Դϴ�.298',2);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (319,'USER299','�׽�Ʈ����299','�׽�Ʈ �����Դϴ�.299',3);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (320,'USER300','�׽�Ʈ����300','�׽�Ʈ �����Դϴ�.300',8);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (321,'�۸���','�׽�Ʈ','�����',2);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (322,'ȫ�浿','�۽��?','��
��
��
',58);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (323,'banana1}','asdlkfjlk','asdf adsf',8);
Insert into JAVA_WEB2.BOARD (BOARD_NO,WRITER,TITLE,CONTENT,VIEW_CNT) values (324,'banana1','ddfad','adf',11);
REM INSERTING into JAVA_WEB2.DVD_MOVIE
SET DEFINE OFF;
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (1,'���ͽ��ڶ�','�̱�','2014',2000,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (2,'������Ʈ ����','�̱�','1994',2000,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (3,'���� �̸���','�Ϻ�','2017',3000,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (4,'��󷣵�','�̱�','2016',2500,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (5,'����','������','1994',2000,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (6,'��ٿ� Ÿ��','����','2013',2000,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (7,'Ÿ��Ÿ��','�̱�','1998',2000,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (8,'�λ��� �Ƹ��ٿ�','��Ż����','1999',2000,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (9,'���ũ Ż��','�̱�','1995',2000,'F',null);
Insert into JAVA_WEB2.DVD_MOVIE (SERIAL_NUMBER,MOVIE_NAME,NATION,PUB_YEAR,CHARGE,RENTAL,USER_NUMBER) values (10,'�����','���ѹα�','2019',4000,'F',null);
REM INSERTING into JAVA_WEB2.DVD_USER
SET DEFINE OFF;
Insert into JAVA_WEB2.DVD_USER (USER_NUMBER,USER_NAME,PHONE_NUMBER,TOTAL_PAYING,GRADE) values (1,'��ö��','010-1234-9876',0,'BRONZE');
Insert into JAVA_WEB2.DVD_USER (USER_NUMBER,USER_NAME,PHONE_NUMBER,TOTAL_PAYING,GRADE) values (2,'�ڿ���','010-5455-7788',0,'BRONZE');
Insert into JAVA_WEB2.DVD_USER (USER_NUMBER,USER_NAME,PHONE_NUMBER,TOTAL_PAYING,GRADE) values (3,'�����','010-9988-2525',0,'BRONZE');
Insert into JAVA_WEB2.DVD_USER (USER_NUMBER,USER_NAME,PHONE_NUMBER,TOTAL_PAYING,GRADE) values (4,'��浿','010-9876-2323',0,'BRONZE');
REM INSERTING into JAVA_WEB2.MEMBER
SET DEFINE OFF;
Insert into JAVA_WEB2.MEMBER (ACCOUNT,PASSWORD,NAME,EMAIL,AUTH,REG_DATE,SESSION_ID,LIMIT_TIME) values ('admin','1234','������','admin@gmail.com','ADMIN',to_date('21/06/02 13:07:12','RR/MM/DD HH24:MI:SS'),'none',null);
Insert into JAVA_WEB2.MEMBER (ACCOUNT,PASSWORD,NAME,EMAIL,AUTH,REG_DATE,SESSION_ID,LIMIT_TIME) values ('abc4321','aaa1234','��浿','aaa4343@gmail.com','COMMON',to_date('21/06/02 13:35:14','RR/MM/DD HH24:MI:SS'),'none',null);
Insert into JAVA_WEB2.MEMBER (ACCOUNT,PASSWORD,NAME,EMAIL,AUTH,REG_DATE,SESSION_ID,LIMIT_TIME) values ('banana','$2a$10$u6VUI/Ph5L8YPeHZjikrruNM/kWuUkQzV62Kqldah4MPG.ZW8yUbe','�質��','bbb2222@naver.com','COMMON',to_date('21/06/02 14:10:22','RR/MM/DD HH24:MI:SS'),'none',null);
Insert into JAVA_WEB2.MEMBER (ACCOUNT,PASSWORD,NAME,EMAIL,AUTH,REG_DATE,SESSION_ID,LIMIT_TIME) values ('test1111','$2a$10$haYA1fpBP5EzY38A3chSVuCHRrd/S.T1bMkbUCbozAJUTI0S13kpy','test11','test1111@isec.com','COMMON',to_date('21/06/02 15:26:29','RR/MM/DD HH24:MI:SS'),'none',to_date('21/06/04 15:42:36','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.MEMBER (ACCOUNT,PASSWORD,NAME,EMAIL,AUTH,REG_DATE,SESSION_ID,LIMIT_TIME) values ('banana1','$2a$10$XPaNoPNktKm4kG.6H4WvxuuFeXsyD9W4E/uw8gW9x9YNPUwoPiGOG','�ٳ���','banana1@isec.com','COMMON',to_date('21/06/03 13:12:38','RR/MM/DD HH24:MI:SS'),'none',to_date('21/06/04 15:44:13','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.MEMBER (ACCOUNT,PASSWORD,NAME,EMAIL,AUTH,REG_DATE,SESSION_ID,LIMIT_TIME) values ('admin123','$2a$10$ApDGY5w5JYZLWifokRDBE.9jIK9G1DnuexKadTUON7cQoNq9qMBdm','�ڰ�����','admin123@naver.com','ADMIN',to_date('21/06/03 14:45:57','RR/MM/DD HH24:MI:SS'),'none',null);
REM INSERTING into JAVA_WEB2.NURI_CHANNEL
SET DEFINE OFF;
REM INSERTING into JAVA_WEB2.RMBOARD
SET DEFINE OFF;
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (56,'������1','����ó1','�׽�Ʈ ���� �����1','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (106,'������1','����ó1','�׽�Ʈ ���� �����1','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (58,'������3','����ó3','�׽�Ʈ ���� �����3','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (59,'������4','����ó4','�׽�Ʈ ���� �����4','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (107,'������2','����ó2','�׽�Ʈ ���� �����2','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (61,'������6','����ó6','�׽�Ʈ ���� �����6','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (62,'������7','����ó7','�׽�Ʈ ���� �����7','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (63,'������8','����ó8','�׽�Ʈ ���� �����8','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (64,'������9','����ó9','�׽�Ʈ ���� �����9','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (65,'������10','����ó10','�׽�Ʈ ���� �����10','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (66,'������11','����ó11','�׽�Ʈ ���� �����11','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (67,'������12','����ó12','�׽�Ʈ ���� �����12','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (68,'������13','����ó13','�׽�Ʈ ���� �����13','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (69,'������14','����ó14','�׽�Ʈ ���� �����14','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (70,'������15','����ó15','�׽�Ʈ ���� �����15','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (71,'������16','����ó16','�׽�Ʈ ���� �����16','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (72,'������17','����ó17','�׽�Ʈ ���� �����17','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (108,'������3','����ó3','�׽�Ʈ ���� �����3','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (74,'������19','����ó19','�׽�Ʈ ���� �����19','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (75,'������20444','����ó20444','�׽�Ʈ ���� �����20','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (76,'������21','����ó21','�׽�Ʈ ���� �����21','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (77,'������22','����ó22','�׽�Ʈ ���� �����22','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (78,'������23','����ó23','�׽�Ʈ ���� �����23','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (79,'������24 asdfasd','����ó24','�׽�Ʈ ���� �����24','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (80,'������25','����ó25','�׽�Ʈ ���� �����25','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (81,'������26','����ó26','�׽�Ʈ ���� �����26','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (82,'������27','����ó27','�׽�Ʈ ���� �����27','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (83,'������28','����ó28','�׽�Ʈ ���� �����28','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (84,'������29','����ó29','�׽�Ʈ ���� �����29','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (85,'������30','����ó30','�׽�Ʈ ���� �����30','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (87,'������32','����ó32','�׽�Ʈ ���� �����32','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (88,'������33','����ó33','�׽�Ʈ ���� �����33','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (89,'������34','����ó34','�׽�Ʈ ���� �����34','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (90,'������35','����ó35','�׽�Ʈ ���� �����35','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (91,'������36','����ó36','�׽�Ʈ ���� �����36df','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (92,'������37','����ó37','�׽�Ʈ ���� �����37','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (93,'������38','����ó38','�׽�Ʈ ���� �����38','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (94,'������39','����ó39','�׽�Ʈ ���� �����39','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (95,'������40 test','����ó40','�׽�Ʈ ���� �����40','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (96,'������41','����ó41','�׽�Ʈ ���� �����41','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (97,'������42','����ó42','�׽�Ʈ ���� �����42','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (98,'������43 ttt','����ó43','�׽�Ʈ ���� �����43','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (99,'������44','����ó44','�׽�Ʈ ���� �����44','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (100,'������45','����ó45','�׽�Ʈ ���� �����45','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (101,'������46','����ó46','�׽�Ʈ ���� �����46','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (102,'������47 ttttt','����ó47','�׽�Ʈ ���� �����47','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (103,'������48','����ó48333','�׽�Ʈ ���� �����48dfasdfa','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (104,'������49','����ó49','�׽�Ʈ ���� �����49','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (109,'������4','����ó4','�׽�Ʈ ���� �����4','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (110,'������5','����ó5','�׽�Ʈ ���� �����5','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (111,'������6','����ó6','�׽�Ʈ ���� �����6','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (112,'������7','����ó7','�׽�Ʈ ���� �����7','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (113,'������8','����ó8','�׽�Ʈ ���� �����8','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (114,'������9','����ó9','�׽�Ʈ ���� �����9','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (115,'������10','����ó10','�׽�Ʈ ���� �����10','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (116,'������11','����ó11','�׽�Ʈ ���� �����11','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (117,'������12','����ó12','�׽�Ʈ ���� �����12','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (118,'������13','����ó13','�׽�Ʈ ���� �����13','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (119,'������14','����ó14','�׽�Ʈ ���� �����14','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (120,'������15','����ó15','�׽�Ʈ ���� �����15','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (121,'������16','����ó16','�׽�Ʈ ���� �����16','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (122,'������17','����ó17','�׽�Ʈ ���� �����17','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (123,'������18','����ó18','�׽�Ʈ ���� �����18','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (124,'������19','����ó19','�׽�Ʈ ���� �����19','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (125,'������20','����ó20','�׽�Ʈ ���� �����20','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (126,'������21','����ó21','�׽�Ʈ ���� �����21','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (128,'������23 tttt','����ó23','�׽�Ʈ ���� �����23','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (129,'������24','����ó24','�׽�Ʈ ���� �����24','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (130,'������25','����ó25','�׽�Ʈ ���� �����25','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (131,'������26','����ó26','�׽�Ʈ ���� �����26','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (132,'������27','����ó27','�׽�Ʈ ���� �����27','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (133,'������28','����ó28','�׽�Ʈ ���� �����28','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (134,'������29','����ó29','�׽�Ʈ ���� �����29','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (135,'������30 46346','����ó30','�׽�Ʈ ���� �����30','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (136,'������31','����ó31','�׽�Ʈ ���� �����31','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (137,'������32','����ó32','�׽�Ʈ ���� �����32','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (138,'������33','����ó33','�׽�Ʈ ���� �����33','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (139,'������34','����ó34','�׽�Ʈ ���� �����34','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (140,'������35','����ó35','�׽�Ʈ ���� �����35','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (141,'������36','����ó36','�׽�Ʈ ���� �����36','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (142,'������37','����ó37','�׽�Ʈ ���� �����37','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (143,'������38','����ó38','�׽�Ʈ ���� �����38','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (144,'������39','����ó39','�׽�Ʈ ���� �����39','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (145,'������40','����ó40','�׽�Ʈ ���� �����40uigtighk','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (146,'������41','����ó41','�׽�Ʈ ���� �����41','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (147,'������42','����ó42','�׽�Ʈ ���� �����42','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (148,'������43','����ó43','�׽�Ʈ ���� �����43','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (149,'������44','����ó44','�׽�Ʈ ���� �����44','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (150,'������45','����ó45','�׽�Ʈ ���� �����45','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (151,'������46','����ó46','�׽�Ʈ ���� �����46','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (152,'������47','����ó47','�׽�Ʈ ���� �����47','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (153,'������48','����ó48','�׽�Ʈ ���� �����48','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (154,'������49','����ó49','�׽�Ʈ ���� �����49','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (155,'������50','����ó50','�׽�Ʈ ���� �����50','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (156,'������1','����ó1','�׽�Ʈ ���� �����1','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (157,'������2','����ó2','�׽�Ʈ ���� �����2','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (158,'������3','����ó3','�׽�Ʈ ���� �����3','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (159,'������4','����ó4','�׽�Ʈ ���� �����4','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (160,'������5','����ó5','�׽�Ʈ ���� �����5','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (161,'������6','����ó6','�׽�Ʈ ���� �����6','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (162,'������7','����ó7','�׽�Ʈ ���� �����7','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (163,'������8','����ó8','�׽�Ʈ ���� �����8','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (164,'������9','����ó9','�׽�Ʈ ���� �����9','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (165,'������10','����ó10','�׽�Ʈ ���� �����10','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (166,'������11','����ó11','�׽�Ʈ ���� �����11','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (167,'������12','����ó12','�׽�Ʈ ���� �����12','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (168,'������13','����ó13','�׽�Ʈ ���� �����13','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (169,'������14','����ó14','�׽�Ʈ ���� �����14','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (170,'������15','����ó15','�׽�Ʈ ���� �����15','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (171,'������16','����ó16','�׽�Ʈ ���� �����16','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (172,'������17','����ó17','�׽�Ʈ ���� �����17','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (173,'������18','����ó18','�׽�Ʈ ���� �����18','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (174,'������19','����ó19','�׽�Ʈ ���� �����19','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (175,'������20','����ó20','�׽�Ʈ ���� �����20','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (176,'������21','����ó21','�׽�Ʈ ���� �����21','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (177,'������22','����ó22','�׽�Ʈ ���� �����22','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (178,'������23','����ó23','�׽�Ʈ ���� �����23','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (179,'������24','����ó24','�׽�Ʈ ���� �����24','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (180,'������25','����ó25','�׽�Ʈ ���� �����25','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (181,'������26','����ó26','�׽�Ʈ ���� �����26','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (182,'������27','����ó27','�׽�Ʈ ���� �����27','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (183,'������28','����ó28','�׽�Ʈ ���� �����28','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (184,'������29','����ó29','�׽�Ʈ ���� �����29','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (185,'������30','����ó30','�׽�Ʈ ���� �����30','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (186,'������31','����ó31','�׽�Ʈ ���� �����31','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (187,'������32','����ó32','�׽�Ʈ ���� �����32','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (188,'������33','����ó33','�׽�Ʈ ���� �����33','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (189,'������34','����ó34','�׽�Ʈ ���� �����34','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (190,'������35','����ó35','�׽�Ʈ ���� �����35','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (191,'������36','����ó36','�׽�Ʈ ���� �����36','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (192,'������37','����ó37','�׽�Ʈ ���� �����37','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (193,'������38','����ó38','�׽�Ʈ ���� �����38','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (194,'������39','����ó39','�׽�Ʈ ���� �����39','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (195,'������40','����ó40','�׽�Ʈ ���� �����40','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (196,'������41','����ó41','�׽�Ʈ ���� �����41','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (197,'������42','����ó42','�׽�Ʈ ���� �����42','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (198,'������43','����ó43','�׽�Ʈ ���� �����43','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (199,'������44','����ó44','�׽�Ʈ ���� �����44','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (200,'������45','����ó45','�׽�Ʈ ���� �����45','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (201,'������46','����ó46','�׽�Ʈ ���� �����46','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (202,'������47','����ó47','�׽�Ʈ ���� �����47','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (203,'������48','����ó48','�׽�Ʈ ���� �����48','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (204,'������49','����ó49','�׽�Ʈ ���� �����49','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (205,'������50','����ó50','�׽�Ʈ ���� �����50','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (206,'������51','����ó51','�׽�Ʈ ���� �����51','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (207,'������52','����ó52','�׽�Ʈ ���� �����52','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (208,'������53','����ó53','�׽�Ʈ ���� �����53','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (209,'������54','����ó54','�׽�Ʈ ���� �����54','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (210,'������55','����ó55','�׽�Ʈ ���� �����55','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (211,'������56','����ó56','�׽�Ʈ ���� �����56','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (212,'������57','����ó57','�׽�Ʈ ���� �����57','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (213,'������58','����ó58','�׽�Ʈ ���� �����58','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (214,'������59','����ó59','�׽�Ʈ ���� �����59','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (215,'������60','����ó60','�׽�Ʈ ���� �����60','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (216,'������61','����ó61','�׽�Ʈ ���� �����61','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (217,'������62','����ó62','�׽�Ʈ ���� �����62','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (218,'������63','����ó63','�׽�Ʈ ���� �����63','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (219,'������64','����ó64','�׽�Ʈ ���� �����64','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (220,'������65','����ó65','�׽�Ʈ ���� �����65','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (221,'������66','����ó66','�׽�Ʈ ���� �����66','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (222,'������67','����ó67','�׽�Ʈ ���� �����67','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (223,'������68','����ó68','�׽�Ʈ ���� �����68','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (224,'������69','����ó69','�׽�Ʈ ���� �����69','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (225,'������70','����ó70','�׽�Ʈ ���� �����70','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (226,'������71','����ó71','�׽�Ʈ ���� �����71','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (227,'������72','����ó72','�׽�Ʈ ���� �����72','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (228,'������73','����ó73','�׽�Ʈ ���� �����73','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (229,'������74','����ó74 445','�׽�Ʈ ���� �����74','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (230,'������75','����ó75','�׽�Ʈ ���� �����75','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (231,'������76','����ó76','�׽�Ʈ ���� �����76','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (232,'������77','����ó77','�׽�Ʈ ���� �����77','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (233,'������78','����ó78','�׽�Ʈ ���� �����78','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (234,'������79','����ó79','�׽�Ʈ ���� �����79','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (235,'������80','����ó80','�׽�Ʈ ���� �����80','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (236,'������81','����ó81','�׽�Ʈ ���� �����81','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (237,'������82','����ó82','�׽�Ʈ ���� �����82','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (238,'������83','����ó83','�׽�Ʈ ���� �����83','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (239,'������84','����ó84','�׽�Ʈ ���� �����84','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (240,'������85','����ó85','�׽�Ʈ ���� �����85','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (241,'������86','����ó86','�׽�Ʈ ���� �����86','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (242,'������87','����ó87','�׽�Ʈ ���� �����87','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (243,'������88','����ó88','�׽�Ʈ ���� �����88','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (244,'������89','����ó89','�׽�Ʈ ���� �����89','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (245,'������90','����ó90','�׽�Ʈ ���� �����90','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (246,'������91','����ó91','�׽�Ʈ ���� �����91','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (247,'������92','����ó92','�׽�Ʈ ���� �����92','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (248,'������93','����ó93','�׽�Ʈ ���� �����93','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (249,'������94','����ó94','�׽�Ʈ ���� �����94','CHINA_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (250,'������95','����ó95','�׽�Ʈ ���� �����95','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (251,'������96','����ó96','�׽�Ʈ ���� �����96','KOREAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (253,'������98','����ó98','�׽�Ʈ ���� �����98','ITALY_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (254,'������99','����ó99','�׽�Ʈ ���� �����99','JAPAN_FOOD');
Insert into JAVA_WEB2.RMBOARD (RES_NUM,RES_NAME,TEL_NUMBER,MENUS,CATEGORY) values (255,'������100','����ó100','�׽�Ʈ ���� �����100','ITALY_FOOD');
REM INSERTING into JAVA_WEB2.SCORE
SET DEFINE OFF;
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (7,'�̼���',95,85,70,250,83.35);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (24,'tester',60,30,80,170,56.65);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (21,'tester',50,10,30,90,30);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (4,'ȫ�浿',95,80,70,245,81.65);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (9,'�質��',90,85,95,270,90);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (27,'�׽�Ʈ',90,80,70,240,80);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (22,'��ٺ�',50,60,70,180,60);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (23,'����Ʈ',90,80,60,230,76.65);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (25,'ȫ�浿',50,60,70,180,60);
Insert into JAVA_WEB2.SCORE (STU_NUM,STU_NAME,KOR,ENG,MATH,TOTAL,AVERAGE) values (26,'ȫ�浿',50,60,70,180,60);
REM INSERTING into JAVA_WEB2.TBL_REPLY
SET DEFINE OFF;
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (1,322,'�׽�Ʈ ���0444','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (2,322,'ȫȫȫ','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (3,322,'�׽�Ʈ ���2','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (4,322,'�׽�Ʈ ���3','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (8,322,'�׽�Ʈ ���7','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (9,322,'�׽�Ʈ ���8','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (11,322,'�׽�Ʈ ���10','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (13,322,'�׽�Ʈ ���12','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (14,322,'�׽�Ʈ ���13','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (25,322,'��� �׽�Ʈ','����',to_date('21/06/01 13:27:57','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (16,322,'�׽�Ʈ ���15','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (17,322,'�׽�Ʈ ���16','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (18,322,'�׽�Ʈ ���17','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (19,322,'�׽�Ʈ ���18','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (20,322,'API ��� ���� �׽�Ʈ ȫȫ','�߿���',to_date('21/05/26 14:34:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (23,321,'API ��� �׽�Ʈ �����','������',to_date('21/05/26 15:35:06','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (24,313,'������','��������',to_date('21/06/01 13:25:29','RR/MM/DD HH24:MI:SS'));
Insert into JAVA_WEB2.TBL_REPLY (REPLY_NO,BOARD_NO,REPLY_TEXT,REPLY_WRITER,REPLY_DATE) values (26,322,'�ڿ���','����',to_date('21/06/01 13:29:29','RR/MM/DD HH24:MI:SS'));
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_BOARD" ON "JAVA_WEB2"."BOARD" ("BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DVD_MOVIE
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_DVD_MOVIE" ON "JAVA_WEB2"."DVD_MOVIE" ("SERIAL_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_MEMBER" ON "JAVA_WEB2"."MEMBER" ("ACCOUNT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_NURI_CHANNEL
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_NURI_CHANNEL" ON "JAVA_WEB2"."NURI_CHANNEL" ("CHANNEL_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_REPLY" ON "JAVA_WEB2"."TBL_REPLY" ("REPLY_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RMBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_RMBOARD" ON "JAVA_WEB2"."RMBOARD" ("RES_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_SCORE
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_SCORE" ON "JAVA_WEB2"."SCORE" ("STU_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USER_NUMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_USER_NUMBER" ON "JAVA_WEB2"."DVD_USER" ("USER_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007166
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."SYS_C007166" ON "JAVA_WEB2"."MEMBER" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_BOARD" ON "JAVA_WEB2"."BOARD" ("BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DVD_MOVIE
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_DVD_MOVIE" ON "JAVA_WEB2"."DVD_MOVIE" ("SERIAL_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USER_NUMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_USER_NUMBER" ON "JAVA_WEB2"."DVD_USER" ("USER_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_MEMBER" ON "JAVA_WEB2"."MEMBER" ("ACCOUNT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007166
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."SYS_C007166" ON "JAVA_WEB2"."MEMBER" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_NURI_CHANNEL
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_NURI_CHANNEL" ON "JAVA_WEB2"."NURI_CHANNEL" ("CHANNEL_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RMBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_RMBOARD" ON "JAVA_WEB2"."RMBOARD" ("RES_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_SCORE
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_SCORE" ON "JAVA_WEB2"."SCORE" ("STU_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA_WEB2"."PK_REPLY" ON "JAVA_WEB2"."TBL_REPLY" ("REPLY_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("BOARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DVD_MOVIE
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."DVD_MOVIE" ADD CONSTRAINT "PK_DVD_MOVIE" PRIMARY KEY ("SERIAL_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."DVD_MOVIE" MODIFY ("CHARGE" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."DVD_MOVIE" MODIFY ("PUB_YEAR" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."DVD_MOVIE" MODIFY ("NATION" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."DVD_MOVIE" MODIFY ("MOVIE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DVD_USER
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."DVD_USER" ADD CONSTRAINT "PK_USER_NUMBER" PRIMARY KEY ("USER_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."DVD_USER" MODIFY ("USER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."MEMBER" ADD UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("ACCOUNT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."MEMBER" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NURI_CHANNEL
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."NURI_CHANNEL" ADD CONSTRAINT "PK_NURI_CHANNEL" PRIMARY KEY ("CHANNEL_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."NURI_CHANNEL" MODIFY ("REG_DATE" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."NURI_CHANNEL" MODIFY ("ADMIN_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."NURI_CHANNEL" MODIFY ("CHANNEL_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RMBOARD
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."RMBOARD" ADD CONSTRAINT "PK_RMBOARD" PRIMARY KEY ("RES_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."RMBOARD" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."RMBOARD" MODIFY ("TEL_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."RMBOARD" MODIFY ("RES_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SCORE
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."SCORE" ADD CONSTRAINT "PK_SCORE" PRIMARY KEY ("STU_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."SCORE" MODIFY ("MATH" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."SCORE" MODIFY ("ENG" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."SCORE" MODIFY ("KOR" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."SCORE" MODIFY ("STU_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."TBL_REPLY" ADD CONSTRAINT "PK_REPLY" PRIMARY KEY ("REPLY_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JAVA_WEB2"."TBL_REPLY" MODIFY ("REPLY_WRITER" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."TBL_REPLY" MODIFY ("REPLY_TEXT" NOT NULL ENABLE);
  ALTER TABLE "JAVA_WEB2"."TBL_REPLY" MODIFY ("BOARD_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DVD_MOVIE
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."DVD_MOVIE" ADD CONSTRAINT "FK_DVD_MOVIE_DVD_USER" FOREIGN KEY ("USER_NUMBER")
	  REFERENCES "JAVA_WEB2"."DVD_USER" ("USER_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "JAVA_WEB2"."TBL_REPLY" ADD CONSTRAINT "FK_REPLY_FREE_BOARD" FOREIGN KEY ("BOARD_NO")
	  REFERENCES "JAVA_WEB2"."BOARD" ("BOARD_NO") ENABLE;
