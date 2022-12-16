select * from departments;

select department_name, manager_id
FROM departments;

select * from locations;

SELECT location_id, city , state_province
FROM LOCATIONS;



SELECT LAST_NAME, salary, salary+300 
FROM EMPLOYEES;

SELECT job_ID, MIN_SALARY+400000
FROM JOBS;

select last_name, salary, 12*salary+100
FROM EMPLOYEES;

SELECT min_SALARY, MAX_SALARY+100
FROM jobs;

select LAST_NAME, 12*salary*commission_pct,commission_pct
FROm employees;


select last_name as name, commission_pct comm, salary*10
from employees;

select street_address streetad, state_province statepro, country_id couid
FROM Llocation;
