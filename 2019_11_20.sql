--Ư�����̺��� Į������Ʈ�� ��ȸ�ҋ� ����ϴ� ���
DESC PROD;
SELECT *FROM USER_TAB_COLUMNS
--���̺� ��ȸ 
WHERE TABLE_NAME='PROD';
--CLOB:4GB
SELECT *FROM USERS;

SELECT USERID,usernm,reg_dt FROM USERS;
--as�� Ű�����̹Ƿ� AS�� �ۼ� as�� �����ص� ��Ī�� �ټ� �ִ� 
--�ι��ڿ��� �̾��ٶ��� ||���� ��� 
SELECT USERID,usernm,reg_dt reg_date,REG_DT+5 AS after5day FROM users;
SELECT ((10-2)*2) ,('DB SQL ����'),userid||'_modifd' FROM users;

DESC member;
SELECT *FROM users;
DELETE users WHERE userid NOT IN('brown','sally','cony','moon','james');

SELECT userid,usernm,reg_dt FROM users;
UPDATE users SET reg_dt=null WHERE userid='moon';
SELECT USERID,usernm,reg_dt reg_date,REG_DT+5 AS after5day FROM users;
--�ǽ�2
SELECT prod_id AS id,prod_name AS name FROM prod;
SELECT lprod_gu AS gu,lprod_nm AS nm FROM lprod;
SELECT buyer_id AS ���̾���̵�,buyer_name AS �̸� FROM buyer;
--�Լ����� ������� �ϳ��� �����Ͷ�� �ν� 
SELECT CONCAT(CONCAT(userid,usernm),pass) AS concatidnamepasss FROM users;
SELECT TABLE_NAME,'SELECT * FROM '||TABLE_NAME||';' AS query ,
CONCAT(CONCAT('SELECT * FROM ',TABLE_NAME),';')AS concatquery
FROM user_tables
;
SELECT *FROM users WHERE userid='brown';
--������ ���� �� ���̺�
SELECT*FROM emp;
SELECT *FROM emp
where deptno>=20;

SELECT *
FROM emp
WHERE empno>=7700;
SELECT empno,ename,hiredate
FROM emp
where HIREDATE>=TO_DATE('1982/1/1','yyyy/mm/dd');
SELECT *FROM emp
WHERE sal BETWEEN 1000 AND 2000;
--��¥�� ���ϴ¹���� Į���� >=TODATE('��¥','������');
SELECT ename,hiredate FROM emp
where hiredate BETWEEN TO_DATE('1982/1/1','yyyy/mm/dd')AND TO_DATE('1983/1/1','yyyy/mm/dd');

SELECT ename,hiredate FROM emp
where hiredate >= TO_DATE('1982/1/1','yyyy/mm/dd')
AND hiredate <=TO_DATE('1983/1/1','yyyy/mm/dd');
