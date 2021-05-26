SELECT * FROM board
WHERE content LIKE '%20%';

-- ����, �������� �˻��ϴ� ����
SELECT
    board_no, writer, title, content, view_cnt
FROM (SELECT /*+INDEX_DESC(board pk_board)*/
        rownum rn, board_no, writer, title, content, view_cnt
    FROM board
    WHERE title LIKE '%20%' AND
    rownum <= 10)
WHERE rn > 0;