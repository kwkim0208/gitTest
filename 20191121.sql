SELECT *FROM emp 
WHERE DEPTNO IN(10,20);
--~�̰ų�-->OR(�Ǵ�) ~�̰� ->AND(�׸���)

SELECT *FROM users;
SELECT userid as "���̵�",usernm as "�̸�",alias as "����"
FROM users 
WHERE userid IN('brown','cony','sally');
SELECT *FROM emp
where MGR IS NULL;
SELECT mem_id,mem_name FROM member
WHERE mem_name like '��%';
--**db���� 1���ڸ� �ǹ��ϴ� ������ _ �ϳ��̴� 
SELECT *FROM emp
where ename LIKE 'S__T_';

SELECT *FROM emp 
where comm is NOT NULL;
SELECT *FROM emp
WHERE job='SALESMAN' AND hiredate>=TO_DATE('1981/06/01','yyyy/mm/dd');
SELECT *FROM emp
WHERE deptno!=10
AND hiredate>=TO_DATE('1981/06/1','yyyy/mm/dd')
;
SELECT *FROM emp
WHERE deptno NOT IN 10 AND hiredate>=TO_DATE('1981/06/01','yyyy/mm/dd');
SELECT *FROM emp
WHERE deptno  IN (20,30) AND hiredate>=TO_DATE('1981/06/01','yyyy/mm/dd');

SELECT *FROM emp
WHERE job='SALESMAN'OR  hiredate>=TO_DATE('1981/06/01','yyyy/mm/dd');
SELECT *FROM emp
WHERE job='SALESMAN'OR empno LIKE '78%';
SELECT *FROM emp
--���� �Ź��ߴ�����
WHERE job='SALESMAN'OR empno >='7800'
AND empno<'7900';
SELECT *FROM emp
WHERE 
job='SALESMAN'OR empno LIKE '78%' AND hiredate>=TO_DATE('1981/06/01','yyyy/mm/dd');
SELECT *FROM emp
where MGR IS NULL;

select *FROM dept 
ORDER BY  loc DESC;
SELECT *FROM emp 
WHERE comm IS NOT NULL 
ORDER BY COMM DESC, empno DESC;
