/*
    SQL ( Structured Query Language) - 구조적 질의 언어
    관계형 데이터 베이스 시스템 (RDBMS=Relational DataBase Management System) 에서 자료를 
    관리 및 처리 하기위해 설계된 언어.
    mac Ctrl+enter
    

SELECT 문
    데이터베이스 에서 정보 검색
    
*/
-- 모든 열 선택 *
SELECT *
FROM departments;

-- 특정 열 선택
SELECT department_id, location_id
FROM departments;

/*
산술식
    산술 연산자를 사용하여 숫자/날자 데이터 표현식 작성
    
    +더하기
    - 빼기
    * 곱하기
    / 나누기
    
*/

--산술 연산자 사용
SELECT LAST_NAME, SALARY, SALARY + 300
FROM employees;

--

/*
연산자 우선순위
    곱하기와 나누기는 더하기 빼기보다는 먼저 수행
    
*/

SELECT last_name, salary, 12*salary+100
FROM employees;

SELECT last_name, salary, 12*(salary+100)
FROM employees;

/*

산술식의 Null 값
    null 값을 포함하는 산술식은 null로 계산
    
*/
select last_name, 12*salary*commission_pct, commission_pct
FROM employees;
select * from employees;

/*
열 alias 정의
    열 머리글의 이름을 바꿔준다.
    계산에서 유용하다.
    열 이름 바로 뒤에 나옵니다. ( 열 이름과 alias 사이에 선택 사항인 AS 키워드가 올수도 있다.
    공백이나 특수 문자를 포함하거나 대소문자를 구분하는 경우 큰따옴표가 필요합니다.
    
*/
--띄어쓰기가 없다면 쌍따옴표를 생략해줘도된다.
SELECT last_name AS name, commission_pct comm, salary * 10 
FROM employees;

--as 할때 띄어쓰기 가 있다면 쌍따옴표 해주어야한다.
SELECT last_name "Name", salary*12 "Annual Salary"
FROM employees;

/*
연결 연산자
    열이나 문자열을 다른열에 연결합니다.
    두개의 세로선 (||) 으로 나타낸다.
    결과 열로 문자 표현식을 작성합니다.
*/
select last_name||job_id AS "Employees",last_name ,job_id
FROM employees;


/*
리터럴 문자열
    리터럴은 SELECT 포함된 문자, 숫자 또는 날짜이다.
    날짜 및 문자 리터럴 값은 작은 따옴표로 묶어야 한다.
    각 문자열은 반환되는 각 행에 한번 출력된다.
    
*/
SELECT last_name || ' is a ' || job_id as "Employees Details" 
FROM employees;

/*
대체 인용 (q) 연산자
    자신의 따옴표 구분자를 지정한다.
    구분자를 임의로 선택한다.
    가독성 및 사용성이 증가한다.
    
*/
SELECT * from employees;
select department_name || q'[ Department's Manager Id: ]' || manager_id
as "Departmnet and Manager"
FROM departments;

/*
중복행
    기본적으로 query 결과 에는 중복 행을 포함한 모든행이 표시된다.

DISTINCT
    결과에서 중복행 제
*/
-- 중복행 
select department_id
FROm employees;

select DISTINCT department_id
FROm employees;






















