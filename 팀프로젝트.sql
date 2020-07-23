--팀 계정 아이디 gdTeam01, 비밀번호 gd1234
show user;

--테이블 만들기(member 테이블)
CREATE TABLE member(
    id VARCHAR2(20) PRIMARY KEY,    --아이디
    pwd VARCHAR2(20) NOT NULL,      --비밀번호
    name VARCHAR2(10) NOT NULL,     --사용자 이름
    indate DATE DEFAULT SYSDATE,    --가입날짜
    use CHAR(1) DEFAULT 'Y'         --탈퇴   
);
--DROP TABLE member;
COMMIT;

--테이블 확인
DESC member;

--데이터 확인
SELECT * 
FROM member;

--테이블 만들기(production 테이블)
CREATE TABLE production(
    product_id      NUMBER(38) PRIMARY KEY,       --상품아이디
    product_NAME    VARCHAR2(20) NOT NULL,        --상품이름
    price           NUMBER(38)  NOT NULL,         --가격
    description     VARCHAR2(200),                --상품설명
    img_url         VARCHAR2(200)                 --이미지 url
);

--drop table production;
COMMIT;
--테이블 확인
DESC production;

--데이터 확인
SELECT * 
FROM production;