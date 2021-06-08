CREATE SEQUENCE SEQ_NURI_USER;

CREATE TABLE nuri_user(
    user_no NUMBER(10), --������ȣ PK
    user_id VARCHAR2(10)NOT NULL, --�������̵�
    user_pw VARCHAR2(150)NOT NULL, --������й�ȣ
    nick_name VARCHAR2(10)NOT NULL, --�г���
    reg_date DATE DEFAULT sysdate NOT NULL, --������
    auth VARCHAR2(20) DEFAULT 'COMMON' NOT NULL, --��������

    CONSTRAINT pk_nuri_user PRIMARY KEY (user_no)
);

ALTER TABLE nuri_user ADD session_id VARCHAR2(200) DEFAULT 'none';
ALTER TABLE nuri_user ADD limit_time DATE;

CREATE SEQUENCE SEQ_NURI_CHANNEL;

CREATE TABLE nuri_channel(
    channel_no NUMBER(10), --ä�ι�ȣ PK
    channel_name VARCHAR2(20) NOT NULL, --ä���̸�
    channel_info VARCHAR2(100), --ä�� ����
    admin_user_no NUMBER(10) NOT NULL, --������ ���� ��ȣ
    channel_pw VARCHAR2(20), --ä�� ���ӽ� �ʿ��� �н�����
    reg_date DATE DEFAULT SYSDATE NOT NULL, --ä�� ������


    CONSTRAINT pk_nuri_channel PRIMARY KEY (channel_no)
);

CREATE TABLE nuri_channel_join_user (
    channel_no NUMBER(10), --ä�ι�ȣ PK FK
    user_no NUMBER(10), --������ȣ FK

    CONSTRAINT pk_nuri_channel_join_user PRIMARY KEY (channel_no)
);
 -- ALTER TABLE nuri_channel_join_user ADD CONSTRAINT
 --fk_nuri_channel_join_user FOREIGN KEY (channel_no) REFERENCES nuri_channel (channel_no)

 -- ALTER TABLE nuri_channel_join_user ADD CONSTRAINT
 --fk_nuri_channel_join_user FOREIGN KEY (user_no) REFERENCES nuri_channel_join (user_no)


CREATE SEQUENCE SEQ_NURI_BOARD;

CREATE TABLE nuri_board (
    board_no NUMBER(10), --�۹�ȣ PK
    channel_no NUMBER(10), --ä�ι�ȣ FK
    writer VARCHAR2(20) NOT NULL, --�ۼ���
    title VARCHAR2(30) NOT NULL, --����
    content VARCHAR2(2000), --�۳���
    recommend NUMBER(10) DEFAULT 0 NOT NULL, --��õ ��
    reg_date DATE DEFAULT SYSDATE NOT NULL,  --�ۼ���¥
    notice VARCHAR2(10) DEFAULT 'false' NOT NULL,  --������ ����

    CONSTRAINT pk_nuri_board PRIMARY KEY (board_no)
);
 -- ALTER TABLE nuri_board ADD CONSTRAINT
 --fk_nuri_board FOREIGN KEY (channel_no) REFERENCES nuri_channel (channel_no)

CREATE TABLE nuri_recommend_list(
    board_no NUMBER(10) NOT NULL, --������ȣ FK PK
    user_no NUMBER(10) NOT NULL, --������ȣ FK
    recommend_YN VARCHAR2(1) NOT NULL, --��õ����

    CONSTRAINT pk_nuri_recommend_list PRIMARY KEY (board_no)
);

-- ALTER TABLE nuri_recommend_list ADD CONSTRAINT
 --fk_nuri_recommend_list FOREIGN KEY (board_no) REFERENCES nuri_board (board_no)

 -- ALTER TABLE nuri_recommend_list ADD CONSTRAINT
 --fk_nuri_recommend_list FOREIGN KEY (user_no) REFERENCES nuri_user (user_no)


CREATE SEQUENCE SEQ_NURI_REPLY;

CREATE TABLE nuri_reply(
    channel_no NUMBER(10), --ä�ι�ȣ FK
    board_no NUMBER(10), --������ȣ FK
    reply_no NUMBER(10), --��۹�ȣ PK
    content VARCHAR2(100), --��۳���
    nick_name VARCHAR2(10) NOT NULL, --��� �ۼ��� �̸�
    reply_recommend NUMBER(10) DEFAULT 0 NOT NULL, --��õ��
    reg_date DATE DEFAULT SYSDATE NOT NULL, --�ۼ���

   CONSTRAINT pk_nuri_reply PRIMARY KEY (reply_no)
);
-- ALTER TABLE nuri_reply ADD CONSTRAINT
 --fk_nuri_reply FOREIGN KEY (channel_no) REFERENCES nuri_channel (channel_no)

-- ALTER TABLE nuri_reply ADD CONSTRAINT
 --fk_nuri_reply FOREIGN KEY (board_no) REFERENCES nuri_board (board_no)



CREATE TABLE nuri_reply_recommend_list(
    board_no NUMBER(10) NOT NULL, --������ȣ FK
    reply_no NUmBER(10) NOT NULL, --��� ��ȣ FK PK
    user_no NUMBER(10) NOT NULL, --������ȣ FK
    reply_recommend_YN VARCHAR2(1) DEFAULT 'N' NOT NULL, --��õ����

    CONSTRAINT pk_nuri_reply_recommend_list PRIMARY KEY (reply_no)
);
-- ALTER TABLE nuri_reply_recommend_list ADD CONSTRAINT
 --fk_nuri_reply_recommend_list FOREIGN KEY (board_no) REFERENCES nuri_board (board_no)

 -- ALTER TABLE nuri_reply_recommend_list ADD CONSTRAINT
 --fk_nuri_reply_recommend_list FOREIGN KEY (reply_no) REFERENCES nuri_reply (reply_no)

 -- ALTER TABLE nuri_reply_recommend_list ADD CONSTRAINT
 --fk_nuri_reply_recommend_list FOREIGN KEY (user_no) REFERENCES nuri_user (user_no)


CREATE SEQUENCE SEQ_NURI_NOTE;

CREATE TABLE nuri_note(
    note_no NUMBER(10), --���� ��ȣ PK
    send_id VARCHAR2(10) NOT NULL,--������ ���
    receive_id VARCHAR2(10) NOT NULL, --�޴� ���
    content VARCHAR2(200) NOT NULL, --���� ����
    reg_date DATE DEFAULT SYSDATE NOT NULL, --���� �����ð�

    CONSTRAINT pk_nuri_note PRIMARY KEY (note_no)
);

--CREATE TABLE nori_note_repository(
--    note_no NUMBER(10),
--    note_content VARCHAR2(200),
--
--    CONSTRAINT pk_nori_note_repository PRIMARY KEY (note_no)
--);

COMMIT;


SELECT * FROM nuri_user;

SELECT * FROM nuri_channel;

SELECT * FROM nuri_channel_join_user;



INSERT INTO nuri_channel
        (channel_no, channel_name, channel_info, admin_user_no, channel_pw)
        VALUES
        (seq_nuri_channel.nextval, 'test2', 'test channel02', 2, '1111') ;
        
SELECT * FROM nuri_channel
        WHERE channel_no = 1;