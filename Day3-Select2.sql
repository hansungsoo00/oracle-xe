/*
선택을 사용하여 행 제한
    WHERE 절을 사용하여 반환되는 행을 제한한다.
    
WHERE 
    조건을 충족하는 행으로 query 를 제한한다.
    세가지 요소
    - 열이름
    - 비교 조건
    - 열 이름, 상수 또는 값 리스트
*/

--WHERE 절 사용
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;

/*
문자열 및 날짜
    문자열 및 날짜 값은 작은 따옴표로 묶습니다.
    문자 값은 대소문자를 구분하고 날짜 값은 형식을 구분합니다.
    기본 날짜 표시 형식 DD-MON-YY 입니다/
*/

select last_name, job_id, department_id
FROM employees
where last_name = 'Whalen';

select last_name
from employees
where hire_date = '03/06/17';

/*
비교 연산자
    특정 표현식을 다른값이나 표현식과 비교하는 조건에서 사용된다.
    = 같음
    > 보다큼
    > 보다 크거나 같음
    < 보다 작음
    <= 보다 작거나 같음
    BETWEEN ... AND ... 두값 사이 ( 경계값 포함)
    IN(set)             값 리스트 중 일치하는 값 검색
    LIKE                일치하는 문자 패턴 검색
    IS NULL             NULL 값인지 여부
    
*/

select last_name , salary
from employees
where salary <= 3000;

--BETWEEN 연산자를 사용하는 범위 조건

select last_name , salary
from employees
where salary BETWEEN 2500 AND 3500;

--IN 연산자를 사용하는 멤버 조건
SELECT employee_id, last_name, salary, manager_id
FROM employees
where manager_id IN ( 100, 101, 201);

/*
LIKE 연사자를 사용하여 패턴 일치
    LIKE 연산자를 사용하여 유효한검색 문자열 값의 대체 문자를 검색 수행합니다.
        검색 조건에는 리터럴 문자나 숫자가 포함될 수 있습니다.
        - % 는 0개 이상의 문자를 나타낸다.
        - _ 은 한 문자를 나타낸다.
*/

select first_name
from employees
where first_name LIKE 'S%';

--ESCAPE  식별자.
select employee_id, last_name, job_id
from employees
where job_id like '%SA\_%' escape '\';

/*
    NULL 조건사용
    IS NULL 연산자로 NULL 을 테스트한다.
*/

select last_name, manager_id
from employees
where manager_id IS NULL;

/*
논리 연산자를 사용 하여 조건 정의
    AND : 구성 요소 저건이 모두 참인 경우 TRUE 반환
    OR : 구성 요소 조건중 하나가 참인 경우 TRUE 반환
    NOT : 조건이 거짓일 경우 TRUE 를 반환함.
    
*/
--AND 연산자 사용

select employee_id, last_name, job_id, salary
FROm employees
where salary >= 10000
and job_id like '%MAN%';

--OR 연산자 사용
select employee_id, last_name, job_id, salary
from employees
where salary >= 10000
OR job_id like '%MAN%';

--NOT 연산자 사용
select last_name, job_id
FROM employees
where job_id NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP');

/*
ORDER BY 절
    ORDER BY 절을 사용하여 검색된 행을 정렬한다.
    - ASC : 오름차순 , 기본값
    - DESC : 내림차순
    select 맨마지막에 온다.
*/
-- 오름차순 
select last_name, job_id, department_id, hire_date
from employees
ORDER BY hire_date;
--내림차순
select last_name, job_id, department_id, hire_date
from employees
ORDER BY hire_date DESC;

-- 열 alias 를 기준으로 정렬
select employee_id, last_name, salary*12 annsal
from employees
order by annsal;
-- 열 숫자 위치를 사용하여 정렬
select employee_id, last_name, salary*12 annsal
from employees
order by 3;

--여러 열을 기준으로 정렬
select last_name, job_id, department_id, salary
from employees
order by department_id, salary desc;

