select *
from USER_TABLES;

CREATE SEQUENCE category_seq
    START WITH 1
    INCREMENT BY 1;
CREATE SEQUENCE menu_seq
    START WITH 1
    INCREMENT BY 1;
CREATE TABLE category(
        category_no         NUMBER(5)       CONSTRAINT category_pk PRIMARY KEY,
        category_name       VARCHAR2(30)    CONSTRAINT category_name_uk UNIQUE
);

CREATE TABLE menu(
        menu_id         NUMBER(5)       CONSTRAINT menu_pk          PRIMARY KEY,
        menu_name       VARCHAR2(30)    CONSTRAINT menu_name_uk     UNIQUE NOT NULL,
        price           NUMBER(5)       CONSTRAINT menu_price_nn    NOT NULL,
        description     VARCHAR2(300),
        category_no     NUMBER(5)       NOT NULL,       
        CONSTRAINT menu_fk  FOREIGN KEY(category_no) REFERENCES category(category_no) ON DELETE CASCADE 
);

--카테고리 추가
----커피종류
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '블론드 로스트');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '미디엄 로스트');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '다크 로스트');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '플레이버 로스트');
--메뉴 추가
--커피번호,이름,가격,설명,카테고리 번호(외래키)
--블론드 로스트 
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'르완다 블론드 로스트',4000,'참 맛있는 커피',1);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'베란다 블렌드 로스트',4500,'베란다한 커피',1);
COMMIT;
--미디엄 로스트
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'아이스 커피 블렌드',4700,'참 아이스 맛있는 커피',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'디카페인 하우스 블렌드',5500,'디카페인한 커피',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'에티오피아',6500,'에티오피아한 커피',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'케냐',5100,'케냐한 커피',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'하우스 블렌드',4500,'하우스한 커피',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'브렉퍼스트 블렌드',5500,'브렉한 커피',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'콜롬비아',3500,'콜롬한 커피',2);
COMMIT;

--카테고리 추가
----푸드 종류
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '브레드');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '케이크');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '샌드위치 샐러드');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '따뜻한 푸드');
COMMIT;
--메뉴 추가
----브레드
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'진한 가나슈 초콜릿',9000,'가나슈 초콜릿',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'쿠키 블루베리 잼',9800,'쿠키 블루베리',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'아 슈크림',7000,'아슈크림',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'올래미니',9000,'올래미니',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'다크 초콜릿 머핀',9000,'다크초콜릿머핀',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'상큼한 블루베리',9000,'상큼',5);
COMMIT;
----케이크
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'프롯티 오렌지 케이크',9000,'가나슈 초콜릿',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'백년 초콜릿',9000,'가나슈 초콜릿',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'새코롬 한라봉',9000,'가나슈 초콜릿',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'초콜릿 라떼',9000,'가나슈 초콜릿',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'카페 라떼',9000,'가나슈 초콜릿',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'레이어 가나슈',9000,'가나슈 초콜릿',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'레드벨벳 케이크',9000,'가나슈 초콜릿',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'티라미수 케이크',9000,'가나슈 초콜릿',6);
COMMIT;


--조회하기
----메뉴 없는 카테고리도 조회
SELECT *
FROM category left outer join menu
ON category.category_no = menu.category_no
ORDER BY category.category_no asc;
----메뉴 있는 카테고리만 조회
SELECT *
FROM category right outer join menu
ON category.category_no = menu.category_no
ORDER BY category.category_no asc;



drop table menu;
drop table category cascade constraints;
drop sequence category_seq;