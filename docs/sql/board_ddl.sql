DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP SEQUENCE Board_num;


CREATE TABLE BOARD (
   DOC_NUM NUMBER(30) NOT NULL, /* 글번호 */
   USERID VARCHAR2(100), /* 회원아이디 */
   LAT NUMBER(18,15), /* 위도 */
   LON NUMBER(18,15), /* 경도 */
   PIC_FILE VARCHAR2(300), /* 사진파일 */
   MOV_FILE VARCHAR2(300), /* 동영상파일명 */
   DOC_TLE VARCHAR2(100), /* 글제목 */
   DOC_CON VARCHAR2(500), /* 글내용 */
   DOC_DATE DATE, /* 글작성날짜 */
   DOC_HIT NUMBER, /* 글조회수 */
   DOC_TF VARCHAR2(100), /* 글공개여부 */
   DOC_TAG VARCHAR2(100), /* 글태그 */
   PLACE VARCHAR2(100) /* 새 장소 */
);

ALTER TABLE BOARD
   ADD
      CONSTRAINT PK_BOARD
      PRIMARY KEY (
         DOC_NUM
      );

ALTER TABLE BOARD
   ADD
      CONSTRAINT FK_USERS_TO_BOARD
      FOREIGN KEY (
         USERID
      )
      REFERENCES USERS (
         USERID
      );
      
CREATE SEQUENCE Board_num
start with 1
increment BY 1
;


select * from users;

select * from board;
