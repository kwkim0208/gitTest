--특정테이블의 칼럼리스트를 조회할떄 사용하는 방법
DESC PROD;
SELECT *FROM USER_TAB_COLUMNS
--테이블 조회 
WHERE TABLE_NAME='PROD';
--CLOB:4GB
SELECT *FROM USERS;

SELECT USERID,usernm,reg_dt FROM USERS;
--as는 키워드이므로 AS로 작성 as를 생략해도 별칭을 줄수 있다 
--두문자열을 이어줄때는 ||연산 사용 
SELECT USERID,usernm,reg_dt reg_date,REG_DT+5 AS after5day FROM users;
SELECT ((10-2)*2) ,('DB SQL 수업'),userid||'_modifd' FROM users;

DESC member;
SELECT *FROM users;
DELETE users WHERE userid NOT IN('brown','sally','cony','moon','james');

SELECT userid,usernm,reg_dt FROM users;
UPDATE users SET reg_dt=null WHERE userid='moon';
SELECT USERID,usernm,reg_dt reg_date,REG_DT+5 AS after5day FROM users;
--실습2
SELECT prod_id AS id,prod_name AS name FROM prod;
SELECT lprod_gu AS gu,lprod_nm AS nm FROM lprod;
SELECT buyer_id AS 바이어아이디,buyer_name AS 이름 FROM buyer;
--함수에서 결과값은 하나의 데이터라는 인식 
SELECT CONCAT(CONCAT(userid,usernm),pass) AS concatidnamepasss FROM users;
SELECT TABLE_NAME,'SELECT * FROM '||TABLE_NAME||';' AS query ,
CONCAT(CONCAT('SELECT * FROM ',TABLE_NAME),';')AS concatquery
FROM user_tables
;
SELECT *FROM users WHERE userid='brown';
--앞으로 많이 볼 테이블
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
--날짜를 비교하는방법은 칼럼명 >=TODATE('날짜','포맷팅');
SELECT ename,hiredate FROM emp
where hiredate BETWEEN TO_DATE('1982/1/1','yyyy/mm/dd')AND TO_DATE('1983/1/1','yyyy/mm/dd');

SELECT ename,hiredate FROM emp
where hiredate >= TO_DATE('1982/1/1','yyyy/mm/dd')
AND hiredate <=TO_DATE('1983/1/1','yyyy/mm/dd');
