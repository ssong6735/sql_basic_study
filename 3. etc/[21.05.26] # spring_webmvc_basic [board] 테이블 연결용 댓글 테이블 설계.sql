CREATE SEQUENCE seq_reply;

CREATE TABLE tbl_reply (
    reply_no NUMBER(10),
    board_no NUMBER(10) NOT NULL,
    reply_text VARCHAR2(1000) NOT NULL,
    reply_writer VARCHAR2(50) NOT NULL,
    reply_date DATE default SYSDATE
);

-- ��� �÷��� pk �ɱ�
ALTER TABLE tbl_reply
ADD CONSTRAINT pk_reply
PRIMARY KEY (reply_no);

-- board ���̺�� �ܷ�Ű ����
ALTER TABLE tbl_reply
ADD CONSTRAINT fk_reply_free_board
FOREIGN KEY (board_no)
REFERENCES board (board_no);

SELECT * FROM tbl_reply;

SELECT * FROM board ORDER BY board_no DESC;