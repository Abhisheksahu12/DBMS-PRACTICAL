DROP SCHEMA IF EXISTS COMPANY;

CREATE SCHEMA COMPANY;

USE COMPANY;

CREATE TABLE EMPLOYEE
(
    Eno           CHAR(3)     NOT NULL,
    Ename         VARCHAR(50) NOT NULL,
    Job_type      VARCHAR(50) NOT NULL,
    SupervisorENo CHAR(3),
    Hire_date     DATE        NOT NULL,
    Dno           INT,
    Commission    DEC(10, 2),
    Salary        DEC(7, 2)   NOT NULL,
    PRIMARY KEY (Eno)
);

CREATE TABLE DEPARTMENT
(
    Dno      INT NOT NULL,
    Dname    VARCHAR(50),
    Location VARCHAR(50) DEFAULT 'New Delhi',
    PRIMARY KEY (Dno)
);

ALTER TABLE EMPLOYEE
    ADD CONSTRAINT SupervisorConstraint
        FOREIGN KEY (SupervisorENo) REFERENCES EMPLOYEE (Eno);

ALTER TABLE EMPLOYEE
    ADD CONSTRAINT DepartmentConstraint
        FOREIGN KEY (Dno) REFERENCES DEPARTMENT (Dno);



Adding data to tables:

INSERT INTO DEPARTMENT
VALUES (10, 'Headquarters', 'Mumbai'),
       (45, 'Legal', 'Mumbai'),
       (30, 'IT', 'Bengaluru'),
       (20, 'Outreach', 'Dallas'),
       (95, 'Purchase', 'Dallas');

INSERT INTO DEPARTMENT (Dno, Dname)
VALUES (90, 'Sales'),
       (40, 'Administration'),
       (50, 'Research');

INSERT INTO EMPLOYEE
VALUES ('778', 'John Smith', 'Managing Director', NULL, '1980-06-12', 10, NULL, 5800.23),
       ('153', 'Andy Beaford', 'Manager', '778', '2000-09-08', 40, NULL, 502.30),
       ('23', 'Sudipto Ghosh', 'Manager', '778', '1981-11-21', 30, NULL, 2465.92),
       ('25', 'Anmol Gupta', 'Manager', '778', '1981-09-11', 40, NULL, 2865.92),
       ('86', 'Tania Chauhan', 'Manager', '778', '1983-08-14', 90, 235.90, 2921.37),
       ('89', 'Alicia Jones', 'Manager', '778', '1982-10-26', 95, NULL, 980.35),
       ('232', 'Isa Jaques', 'Manager', '778', '1996-07-23', 45, NULL, 651.05),
       ('520', 'King Hethron', 'Manager', '778', '2015-10-13', 90, NULL, 497.18),
       ('188', 'Sherline Harbord', 'Manager', '778', '1995-08-05', 40, NULL, 926.42),
       ('146', 'Donielle Tuite', 'Intern', '520', '2016-06-12', 90, NULL, 171.60),
       ('125', 'Gurpreet Singh', 'Intern', NULL, '2008-05-15', NULL, NULL, 521.37),
       ('243', 'Marie Brahms', 'Engineer', '23', '1983-06-22', 40, NULL, 876.78),
       ('299', 'Mahala Burtwhistle', 'Analyst', '89', '1990-07-20', 95, NULL, 602.86),
       ('354', 'Bryna McKenny', 'Analyst', '153', '2001-10-11', 90, NULL, 693.63),
       ('421', 'Ulberto Gosz', 'Assistant', NULL, '2017-02-07', 10, NULL, 381.64),
       ('442', 'Netti Dellenbrok', 'Designer', '23', '2014-05-14', 30, NULL, 790.82),
       ('492', 'Salmon Gough', 'Assistant', '86', '2008-12-13', 90, 148.80, 998.32),
       ('504', 'Berny Bonas', 'Accountant', '778', '2008-05-24', 40, NULL, 779.34),
       ('516', 'Lowell Paule', 'Systems Administrator', '23', '2008-03-31', 30, 324.39, 969.66),
       ('518', 'Nicholas Comelini', 'Accountant', '188', '1997-03-20', 90, 546.04, 882.53);

INSERT INTO EMPLOYEE
VALUES ('528', 'Laurence Grosvener', 'Intern', '520', '2019-09-06', 90, 125.45, 244.37),
       ('611', 'Brandtr Wildbore', 'Engineer', '23', '2000-04-14', 30, NULL, 704.23),
       ('697', 'Druci Sixsmith', 'Technician', NULL, '2005-07-27', 10, 530.53, 387.43),
       ('718', 'Oneida Hicklingbottom', 'Intern', '89', '2006-03-25', 95, NULL, 789.82),
       ('732', 'Gannie Quantrell', 'Architect', '23', '2019-04-29', 30, NULL, 174.12),
       ('783', 'Fran Lening', 'Analyst', '23', '1981-05-27', 30, NULL, 471.17),
       ('79', 'Rahul Sahay', 'Intern', '23', '2004-08-14', 30, NULL, 2921.37),
       ('811', 'Shay Restieaux', 'Lawyer', '232', '1999-04-16', 45, 574.68, 500.22),
       ('823', 'Marcille Occleshaw', 'Lawyer', '232', '2003-12-27', 45, 453.52, 507.10),
       ('832', 'Desiri Allott', 'Intern', '89', '1997-11-04', 95, 239.84, 683.09),
       ('87', 'Blake Lewis', 'Intern', '86', '2008-05-02', 90, 125.45, 244.37),
       ('908', 'Gustav Waring', 'Engineer', '23', '2002-12-23', 30, NULL, 141.05),
       ('960', 'Virge Swancott', 'Developer', '23', '1984-01-23', 30, NULL, 292.48),
       ('969', 'Lee Prattin', 'Developer', '23', '1986-01-23', 30, NULL, 296.48),
       ('997', 'Mag Giacomo', 'Architect', '23', '2002-12-23', 30, NULL, 427.98),
       ('785', 'Chandal McBrier', 'Consultant', '23', '1998-02-10', 30, NULL, 697.68),
       ('659', 'Martha Annies', 'Developer', '23', '2008-11-03', 30, NULL, 200.80),
       ('932', 'Selestina Herries', 'Engineer', '23', '2013-05-23', 30, NULL, 239.27),
       ('837', 'Ashil Burney', 'Engineer', '23', '1987-03-29', 30, NULL, 586.13);

INSERT INTO EMPLOYEE
VALUES ('763', 'Rodrick Haighton', 'Analyst', '23', '2000-05-08', 30, NULL, 627.74),
       ('981', 'Nina Fisby', 'Systems Administrator', '23', '2017-07-26', 30, 324.39, 920.84),
       ('498', 'Skell Woolerton', 'Engineer', '23', '2004-04-04', 30, NULL, 506.44),
       ('809', 'Cornie Munby', 'Consultant', '23', '1986-06-07', 30, NULL, 688.37),
       ('915', 'Layton Murrie', 'Designer', '23', '2006-06-24', 30, NULL, 640.31),
       ('842', 'Rivy Buzek', 'Technician', NULL, '1982-05-25', 30, NULL, 295.31);


USE COMPANY;

-- EMPLOYEE
DESC EMPLOYEE;

-- DEPARTMENT
DESC DEPARTMENT;

-- Q1 Query to display Employee Name, Job, Hire Date, Employee Number; for each employee 
with the Employee Number appearing first.
SELECT Eno,
       Ename,
       Job_type,
       Hire_date
FROM EMPLOYEE;

-- Q2 Query to display unique Jobs from the Employee Table.
SELECT DISTINCT Job_type
FROM EMPLOYEE;

-- Q3 Query to display the Employee Name concatenated by a Job separated by a comma
SELECT CONCAT(
               Ename, ',',
               Job_type
           ) AS Employee_Job
FROM EMPLOYEE;

-- Q4 Query to display all the data from the Employee Table. Separate each Column by a comma
--and name the said column as THE_OUTPUT.
SELECT CONCAT(
               Eno, ',',
               Ename, ',',
               Job_type, ',',
               IFNULL(SupervisorENo, ''), ',',
               Hire_date, ',',
               IFNULL(Dno, ''), ',',
               IFNULL(Commission, ''), ',',
               Salary
           ) AS THE_OUTPUT
FROM EMPLOYEE;

-- Q5Query to display the Employee Name and Salary of all the employees earning more than
--$2850.
SELECT Ename,
       Salary
FROM EMPLOYEE
WHERE Salary > 2850;

-- Q6 Query to display Employee Name and Department Number for the Employee No= 79.
SELECT Ename,
       Dno
FROM EMPLOYEE
WHERE Eno = '79';

-- Q7 Query to display Employee Name and Salary for all employees whose salary is not in the
--range of $1500 and $2850
SELECT Ename,
       Salary
FROM EMPLOYEE
WHERE Salary NOT BETWEEN 1500 AND 2850;

-- Q8 Query to display Employee Name and Department No. of all the employees in Dept 10 and
--Dept 30 in the alphabetical order by name
SELECT Ename,
       Dname
FROM (EMPLOYEE
         NATURAL JOIN DEPARTMENT)
WHERE Dno IN (10, 30)
ORDER BY Ename;

-- Q9 Query to display Name and Hire Date of every Employee who was hired in 1981
SELECT Ename,
       Hire_date
FROM EMPLOYEE
WHERE Hire_date
          LIKE '1981______';

-- Q10  Query to display Name and Job of all employees who have not assigned a supervisor.
SELECT Ename,
       Job_type
FROM EMPLOYEE
WHERE SupervisorENo IS NULL;

-- Q11 Query to display the Name, Salary and Commission for all the employees who earn
commission.
SELECT Ename,
       Salary,
       Commission
FROM EMPLOYEE
WHERE Commission IS NOT NULL;

-- Q12 Sort the data in descending order of Salary and Commission.
SELECT *
FROM EMPLOYEE
ORDER BY Salary DESC,
         Commission DESC;

-- Q13 Query to display Name of all the employees where the third letter of their name is ‘A’.
SELECT Ename
FROM EMPLOYEE
WHERE Ename LIKE '__A%';

-- Q14 Query to display Name of all employees either have two ‘R’s or have two ‘A’s in their 
--name and are either in Dept No = 30 or their Manger’s Employee No = 7788.
SELECT Ename
FROM EMPLOYEE
WHERE Ename LIKE '%R%R%'
   OR Ename LIKE '%A%A%'
   OR Dno = 30
   OR SupervisorENo = '778';

-- Q15 Query to display Name, Salary and Commission for all employees whose Commission
--amount is greater than their Salary increased by 5%.
SELECT Ename,
       Salary,
       Commission
FROM EMPLOYEE
WHERE Commission > 1.05 * Salary;

-- Q16 Query to display the Current Date along with the day name.
SELECT DATE(NOW()),
       DAYNAME(NOW());

-- Q17  Query to display Name, Hire Date and Salary Review Date which is the 1st Monday after 
--six months of employment.
WITH RECORDS(Ename, Hire_date, Six_after) AS (
    SELECT Ename,
           Hire_date,
           DATE_ADD(Hire_date, INTERVAL 6 MONTH)
               AS Six_after
    FROM EMPLOYEE
)
SELECT RECORDS.Ename,
       RECORDS.Hire_date,
       DATE_ADD(
               RECORDS.Six_after,
               INTERVAL
               IF(
                       0 = WEEKDAY(RECORDS.Six_after),
                       0 - WEEKDAY(RECORDS.Six_after),
                       7 - WEEKDAY(RECORDS.Six_after) + 0
                   )
               DAY
           ) AS Salary_review_date
FROM RECORDS;

-- Q18 Query to display Name and calculate the number of months between today and the date 
--on which employee was hired of department ‘Purchase’.
SELECT Ename,
       TIMESTAMPDIFF(MONTH, Hire_date, NOW())
FROM (EMPLOYEE
         NATURAL JOIN DEPARTMENT)
WHERE Dname = 'Purchase';

-- Q19 Query to display Name and calculate the number of months between today and the date 
--on which employee was hired of department ‘Purchase’.
SELECT CONCAT(
               Ename, ' earns $',
               Salary, ' monthly ',
               'but wants $', 3 * Salary
           )
           AS "Dream Salary"
FROM EMPLOYEE;

-- Q20 Query to display Name with the 1st letter capitalized and all other letter lower case and
--length of their name of all the employees whose name starts with ‘J’, ’A’ and ‘M’.
SELECT CONCAT(
               UPPER(SUBSTR(Ename, 1, 1)),
               LOWER(SUBSTR(Ename, 2))
           )
           AS "Name",
       LENGTH(Ename)
FROM EMPLOYEE
WHERE Ename LIKE 'J%'
   OR Ename LIKE 'A%'
   OR Ename LIKE 'M%';

-- Q21  Query to display Name, Hire Date and Day of the week on which the employee started.
SELECT Ename,
       Hire_date,
       DAYNAME(Hire_date)
FROM EMPLOYEE;

-- Q22 Query to display Name, Department Name and Department No for all the employees.
SELECT Ename,
       Dno,
       Dname
FROM (EMPLOYEE
         NATURAL JOIN DEPARTMENT);

-- Q23 Query to display Unique Listing of all Jobs that are in Department number 30.
SELECT DISTINCT Job_type
FROM EMPLOYEE
WHERE Dno = 30;

-- Q24 Query to display Name, Dept Name of all employees who have an ‘A’ in their name.
SELECT Ename,
       Dname
FROM (EMPLOYEE
         NATURAL JOIN DEPARTMENT)
WHERE Ename LIKE '%A%';

-- Q25  Query to display Name, Job, Department No. And Department Name for all the 
--employees working at the Dallas location.
SELECT Ename,
       Job_type,
       Dno,
       Dname
FROM (EMPLOYEE
         NATURAL JOIN DEPARTMENT)
WHERE Location = 'Dallas';

-- Q26 uery to display Name and Employee no. Along with their supervisor’s Name and the
--supervisor’s employee no; along with the Employees’ Name who do not have a supervisor.
SELECT L.Ename,
SELECT E.Ename,
       E.Eno,
       S.Ename AS SupervisorName,
       S.Eno   AS SupervisorEno
FROM EMPLOYEE AS E
         LEFT OUTER JOIN EMPLOYEE AS S
                         ON E.SupervisorENo = S.Eno;

-- Q27 Query to display Name, Dept No. And Salary of any employee whose department No. 
--and salary matches both the department no. And the salary of any employee who earns a
--commission.
SELECT L.Ename,
       L.Dno,
       L.Salary
FROM EMPLOYEE AS L,
     EMPLOYEE AS R
WHERE L.Dno = R.Dno
  AND L.Salary = R.Salary
  AND L.Eno <> R.Eno
  AND R.Commission IS NOT NULL;

-- Q28 Query to display Name and Salaries represented by asterisks, where each asterisk (*)
--signifies $100.
SELECT Ename,
       RPAD('*', Salary / 100, '*') AS Salary_Star
FROM EMPLOYEE;

-- Q29  Query to display the Highest, Lowest, Sum and Average Salaries of all the employees
SELECT MAX(Salary),
       MIN(Salary),
       SUM(Salary),
       AVG(Salary)
FROM EMPLOYEE;

-- Q30   Query to display the number of employees performing the same Job type functions.
SELECT Job_type,
       COUNT(DISTINCT Eno)
FROM EMPLOYEE
GROUP BY Job_type;

-- Q31  Query to display the total number of supervisors without listing their names.
SELECT COUNT(DISTINCT SupervisorENo)
FROM EMPLOYEE;

-- Q32 Query to display the Department Name, Location Name, No. of Employees and the 
--average salary for all employees in that department.
SELECT Dname,
       Location,
       COUNT(*)              AS NumberOfEmployees,
       ROUND(AVG(Salary), 2) AS AvgSalary
FROM EMPLOYEE
         NATURAL JOIN DEPARTMENT
GROUP BY EMPLOYEE.Dno;

-- Q33  Query to display Name and Hire Date for all employees in the same dept. as Blake.
SELECT Ename,
       Hire_date
FROM EMPLOYEE
WHERE Dno IN (
    SELECT Dno
    FROM EMPLOYEE
    WHERE Ename LIKE 'Blake%'
);

-- Q34 Query to display the Employee No. And Name for all employees who earn more than the
average salary.
SELECT Ename,
       Salary
FROM EMPLOYEE
WHERE Salary > (
    SELECT AVG(Salary)
    FROM EMPLOYEE
);

-- Q35 Query to display Employee Number and Name for all employees who work in a 
--department with any employee whose name contains a ‘T’.
SELECT Eno,
       Ename
FROM EMPLOYEE
WHERE Dno IN
      (
          SELECT Dno
          FROM EMPLOYEE
          WHERE Ename LIKE '%T%'
      );

-- Q36 Query to display the names and salaries of all employees who report to supervisor named 
--‘King’
SELECT Ename,
       Salary
FROM EMPLOYEE
WHERE SupervisorENo IN (
    SELECT Eno
    FROM EMPLOYEE
    WHERE Ename LIKE 'King%'
);

-- Q37  Query to display the department no, name and job for all employees in the Sales 
--department
SELECT Dno,
       Ename,
       Job_type
FROM (EMPLOYEE
         NATURAL JOIN DEPARTMENT)
WHERE Dname = 'Sales';

-- Q38 Display names of employees along with their department name who have more than 20 
--years experience
SELECT Ename,
       Dname
FROM (EMPLOYEE
         NATURAL JOIN DEPARTMENT)
WHERE TIMESTAMPDIFF
          (
              YEAR,
              Hire_date,
              NOW()
          ) > 20;

-- Q39  Display total number of departments at each location
SELECT Location,
       COUNT(*)
FROM DEPARTMENT
GROUP BY Location;

-- Q40  Find the department name in which at least 20 employees work in
SELECT Dname
FROM (EMPLOYEE
         NATURAL JOIN DEPARTMENT)
GROUP BY Dno
HAVING COUNT(*) > 20;

-- Q41  Query to find the employee’ name who is not supervisor and name of supervisor 
--supervising more than 5 employees.
(
    SELECT Ename
    FROM EMPLOYEE
    WHERE Eno NOT IN (
        SELECT DISTINCT SupervisorENo
        FROM EMPLOYEE
        WHERE SupervisorENo IS NOT NULL
    )
)
UNION
(
    SELECT Ename
    FROM EMPLOYEE
    WHERE Eno IN (
        SELECT SupervisorENo
        FROM EMPLOYEE
        WHERE SupervisorENo IS NOT NULL
        GROUP BY SupervisorENo
        HAVING COUNT(*) > 5
    )
);

-- Q42 Query to display the job type with maximum and minimum employees
WITH JOBCOUNT AS (
    SELECT COUNT(*) AS ECount
    FROM EMPLOYEE
    GROUP BY Job_type
)
SELECT Job_type,
       COUNT(*)
FROM EMPLOYEE
GROUP BY Job_type
HAVING COUNT(*) IN (
    (
        SELECT MAX(ECount)
        FROM JOBCOUNT
    )
    UNION
    (
        SELECT MIN(ECount)
        FROM JOBCOUNT
    )
);
