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

--ī�װ� �߰�
----Ŀ������
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '��е� �ν�Ʈ');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '�̵�� �ν�Ʈ');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '��ũ �ν�Ʈ');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '�÷��̹� �ν�Ʈ');
--�޴� �߰�
--Ŀ�ǹ�ȣ,�̸�,����,����,ī�װ� ��ȣ(�ܷ�Ű)
--��е� �ν�Ʈ 
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'���ϴ� ��е� �ν�Ʈ',4000,'�� ���ִ� Ŀ��',1);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'������ ���� �ν�Ʈ',4500,'�������� Ŀ��',1);
COMMIT;
--�̵�� �ν�Ʈ
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'���̽� Ŀ�� ����',4700,'�� ���̽� ���ִ� Ŀ��',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'��ī���� �Ͽ콺 ����',5500,'��ī������ Ŀ��',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'��Ƽ���Ǿ�',6500,'��Ƽ���Ǿ��� Ŀ��',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'�ɳ�',5100,'�ɳ��� Ŀ��',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'�Ͽ콺 ����',4500,'�Ͽ콺�� Ŀ��',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'�귺�۽�Ʈ ����',5500,'�귺�� Ŀ��',2);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'�ݷҺ��',3500,'�ݷ��� Ŀ��',2);
COMMIT;

--ī�װ� �߰�
----Ǫ�� ����
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '�극��');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '����ũ');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '������ġ ������');
INSERT INTO CATEGORY VALUES(category_seq.NEXTVAL, '������ Ǫ��');
COMMIT;
--�޴� �߰�
----�극��
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'���� ������ ���ݸ�',9000,'������ ���ݸ�',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'��Ű ��纣�� ��',9800,'��Ű ��纣��',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'�� ��ũ��',7000,'�ƽ�ũ��',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'�÷��̴�',9000,'�÷��̴�',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'��ũ ���ݸ� ����',9000,'��ũ���ݸ�����',5);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'��ŭ�� ��纣��',9000,'��ŭ',5);
COMMIT;
----����ũ
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'����Ƽ ������ ����ũ',9000,'������ ���ݸ�',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'��� ���ݸ�',9000,'������ ���ݸ�',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'���ڷ� �Ѷ��',9000,'������ ���ݸ�',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'���ݸ� ��',9000,'������ ���ݸ�',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'ī�� ��',9000,'������ ���ݸ�',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'���̾� ������',9000,'������ ���ݸ�',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'���座�� ����ũ',9000,'������ ���ݸ�',6);
INSERT INTO menu VALUES(menu_seq.NEXTVAL,'Ƽ��̼� ����ũ',9000,'������ ���ݸ�',6);
COMMIT;


--��ȸ�ϱ�
----�޴� ���� ī�װ��� ��ȸ
SELECT *
FROM category left outer join menu
ON category.category_no = menu.category_no
ORDER BY category.category_no asc;
----�޴� �ִ� ī�װ��� ��ȸ
SELECT *
FROM category right outer join menu
ON category.category_no = menu.category_no
ORDER BY category.category_no asc;



drop table menu;
drop table category cascade constraints;
drop sequence category_seq;