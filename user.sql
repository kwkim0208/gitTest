--사용자 추가
create user PCXX identified by java
default tablespace TS_DBSQL
temporary tablespace temp
quota unlimited on TS_DBSQL
quota 0m on system;


--접속, 생성권한
GRANT CONNECT, RESOURCE TO PCXX;
