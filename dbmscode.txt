
11)ADD TWO NUMBERS

set serveroutput on;
ACCEPT a NUMBER PROMPT 'Enter a number a: '
ACCEPT b NUMBER PROMPT 'Enter a number b: '
declare
  a integer := &a; 
  b integer := &b;
  c integer;      
begin
  c := a + b;   
  dbms_output.put_line(chr(10)||a||'+'||b||'='||c);

end;
/

12)ODD OR EVEN

set serveroutput on;
ACCEPT a NUMBER PROMPT 'Enter a number a: '
declare
  a integer := &a;
begin
  if mod(a, 2) = 0 then
    dbms_output.put_line('even');
  else
    dbms_output.put_line('odd');
  end if;
end;
/



13)FACTORIAL

set serveroutput on;
ACCEPT a NUMBER PROMPT 'Enter a number a: '
declare
  a integer := &a;
  f integer := 1;
begin
  while a > 0 loop
    f := f * a;
    a := a - 1;
  end loop;
  dbms_output.put_line(chr(10) || 'factorial=' || f);
end;
/


14)GREATEST OF THREE NUMBERS

set serveroutput on;
ACCEPT a NUMBER PROMPT 'Enter a number a: '
ACCEPT b NUMBER PROMPT 'Enter a number b: '
ACCEPT c NUMBER PROMPT 'Enter a number c: '
declare
  a integer := &a;
  b integer := &b;
  c integer := &c;
  g integer;
begin
  g := a;
  if g < b then
    g := b;
  end if;

  if g < c then
    g := c;
  end if;

  dbms_output.put_line('greatest=' || g);
end;
/



15)MAXIMUM OF TWO NUMBERS

set serveroutput on;
ACCEPT a NUMBER PROMPT 'Enter a number a: '
ACCEPT b NUMBER PROMPT 'Enter a number b: '
 declare
     a integer := 15;
     b integer := 10;
     m integer;
 begin
      m := a;
      if m<b then
        m := b;
      end if;
   dbms_output.put_line('maximum value'||m);
   end;
   /



16)SQUARE OF GIVEN VALUE

set serveroutput on;

declare
  num integer := &num;
  s integer;
begin
  s := num * num;
  dbms_output.put_line('Square of ' || num || ' = ' || s);
end;
/

17)TRIGGGER

create table customers(Id int, Name varchar(20),Age int, Address varchar(20),    Salary int);
insert into customers values(1, 'Ramesh', 23, 'Allahabad', 20000);
insert into customers values(2,'Suresh',22,'Kanpur',22000);
insert into customers values(3,'Mahesh',24,'Ghaziabad',24000);
insert into customers values(4,'Chandan',25,'Noida',26000);
insert into customers values(5,'Alex',21,'Paris',28000);
insert into customers values(6,'Sunita',20,'Delhi',30000);



SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER display_salary_changes
  
  BEFORE DELETE OR INSERT OR UPDATE ON customers
FOR EACH ROW
  
  WHEN (NEW.ID > 0)
  
  DECLARE
 
 sal_diff number;
 
 BEGIN
 
 sal_diff := :NEW.salary - :OLD.salary;
 
 dbms_output.put_line('Old salary: ' || :OLD.salary);
 
 dbms_output.put_line('New salary: ' || :NEW.salary);
 
 dbms_output.put_line('Salary difference: ' || sal_diff);
END;
 
 /


To display sal change
 
  DECLARE
  
  total_rows number(2);
  
  BEGIN
  
  UPDATE customers
  
  SET salary = salary + 5000;

 IF sql%notfound THEN
 
 dbms_output.put_line('no customers updated');
 
 ELSIF sql%found THEN
 
 total_rows := sql%rowcount;
 
 dbms_output.put_line( total_rows || ' customers updated ');
 
 END IF;
 
 END;
 
 /

18)CURSER
  
DECLARE
  c_id customers.id%type;
  c_name customers.name%type;
  c_addr customers.address%type;

  CURSOR c_customers IS
SELECT id, name, address FROM customers;

BEGIN
  OPEN c_customers;

  LOOP
    FETCH c_customers INTO c_id, c_name, c_addr;
    EXIT WHEN c_customers%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE(c_id || ' ' || c_name || ' ' || c_addr);
  END LOOP;

  CLOSE c_customers;
END;
/









A)SWITCH

 set serveroutput on;
 declare
    marks number:=88;
    grade char(1);
    begin
    grade:= case
    when marks>=90 then 'A'
    when marks>=75 then 'B'
    when marks>=60 then 'C'
    when marks>=40 then 'D'
   else 'F'
   end;
   dbms_output.put_line(chr(10)||'Grade='||grade);
   end;
   /



B)MULTIPLICATION

set serveroutput on;
Accept a number prompt ' enter num: '
declare
    a integer := &a;
    m integer;
    begin
       for i in 1..10 loop
        m := a * i;
      dbms_output.put_line(a||'x'||i||'='||m);
      end loop;
    end;
   /

C)REV STRING

SET SERVEROUTPUT ON;

ACCEPT str CHAR PROMPT 'Enter a string: '

DECLARE
  org_str VARCHAR2(100) := '&str';
  rev_str VARCHAR2(100) := '';
  len INTEGER;
BEGIN
  len := LENGTH(org_str);
  
  FOR i IN REVERSE 1..len LOOP
    rev_str := rev_str || SUBSTR(org_str, i, 1);
  END LOOP;
  
  DBMS_OUTPUT.PUT_LINE('Reversed string: ' || rev_str);
END;
/






18)
 set serveroutput on;
 declare
      c_id customers.id%type;
      c_name customers.name%type;
      c_addr customers.address%type;
      CURSOR c_customers is
       select id,name,address from customers;
    begin
      open c_customers;
      loop
       fetch c_customers into c_id,c_name,c_addr;
       exit when c_customers%notfound;
       dbms_output.put_line(c_id||' '||c_name||' '||c_addr);
     end loop;
     close c_customers;
   end;
   /


SET SERVEROUTPUT ON;

ACCEPT a NUMBER PROMPT 'Enter first number: '
ACCEPT b NUMBER PROMPT 'Enter second number: '

DECLARE
  a INTEGER := &a;
  b INTEGER := &b;
  c INTEGER;
BEGIN
  c := a + b;
  DBMS_OUTPUT.PUT_LINE(CHR(10) || a || '+' || b || '=' || c);
END;
/





SQL CODE


PROGRAM 1:
   
CREATE TABLE Student (RollNo INT PRIMARY KEY , Name VARCHAR(100),Course VARCHAR(50), Year INT);


INSERT INTO Student (RollNo, Name, Course, Year) VALUES
(1, 'Sanjay', 'B.Sc', 2022);
INSERT INTO Student (RollNo, Name, Course, Year) VALUES
(2, 'Varun', 'B.Com', 2021);
INSERT INTO Student (RollNo, Name, Course, Year) VALUES
(3, 'Akash', 'BCA', 2023);
INSERT INTO Student (RollNo, Name, Course, Year) VALUES
(4, 'Rohit', 'BA', 2022);
INSERT INTO Student (RollNo, Name, Course, Year) VALUES
(5, 'Anjali', 'BBA', 2024);

  a) alter table Student add email varchar(100);
     alter table Student modify email varchar(50);
    alter table Student rename column Name to sname;
  b)TRUNCATE TABLE Student;
  c)DROP TABLE Student;

PROGRAM2:
   
   CREATE TABLE Department (DepartmentId INT PRIMARY KEY,DeptName VARCHAR(50),HeadOfDepartment VARCHAR(100));

INSERT INTO Department (DepartmentId, DeptName, HeadOfDepartment) VALUES
(1, 'IT', 'Ravi Sharma');
INSERT INTO Department (DepartmentId, DeptName, HeadOfDepartment) VALUES
(2, 'HR', 'Neha Mehta');
INSERT INTO Department (DepartmentId, DeptName, HeadOfDepartment) VALUES
(3, 'Finance', 'Arun Khanna');
INSERT INTO Department (DepartmentId, DeptName, HeadOfDepartment) VALUES
(4, 'Marketing', 'Divya Singh');
INSERT INTO Department (DepartmentId, DeptName, HeadOfDepartment) VALUES
(5, 'Operations', 'Karan Malhotra');






CREATE TABLE Employee (EmployeeId INT PRIMARY KEY,Name VARCHAR(100),Department INT,Salary DECIMAL(10, 2),FOREIGN KEY (Department) REFERENCES Department(DepartmentId));

INSERT INTO Employee (EmployeeId, Name, Department, Salary) VALUES
(101, 'Anjali Rao', 1, 60000);
INSERT INTO Employee (EmployeeId, Name, Department, Salary) VALUES
(102, 'Raj Verma', 2, 45000);
INSERT INTO Employee (EmployeeId, Name, Department, Salary) VALUES
(103, 'Meena Das', 3, 70000);
INSERT INTO Employee (EmployeeId, Name, Department, Salary) VALUES
(104, 'Arjun Patel', 4, 55000);
INSERT INTO Employee (EmployeeId, Name, Department, Salary) VALUES
(105, 'Sneha Kapoor', 1, 62000);

 e)UPDATE Employee SET Salary = 65000 WHERE EmployeeId = 105;
 f)DELETE FROM Employee WHERE EmployeeId = 104;
   
ALTER TABLE Employee ADD CONSTRAINT fk_Department FOREIGN KEY (Department) REFERENCES Department(DepartmentId);
     


PROGRAM 3:
   CREATE USER C##USER_TEST IDENTIFIED BY password123;
   GRANT SELECT,INSERT ON Employee to  C##USER_TEST;
   REVOKE INSERT ON Employee FROM  C##USER_TEST;
SELECT * FROM USER_TAB_PRIVS WHERE GRANTEE='C##USER_TEST';


program:4


CREATE TABLE Dett (DepartmentId INT PRIMARY KEY,DeptName VARCHAR(50),HeadOfDepartment VARCHAR(100));

INSERT INTO Dett (DepartmentId, DeptName, HeadOfDepartment) VALUES
(1, 'IT', 'Ravi Sharma');
INSERT INTO Dett (DepartmentId, DeptName, HeadOfDepartment) VALUES
(2, 'HR', 'Neha Mehta');
select * from dett;
savepoint spl;
INSERT INTO Dett (DepartmentId, DeptName, HeadOfDepartment) VALUES
(3, 'Finance', 'Arun Khanna');
select * from dett;
rollback to spl;
select * from dett;
commit
rollback;








5) a) SELECT * FROM CUSTOMERS WHERE ID=4;

   b) SELECT DISTINCT TOWN FROM CUSTOMERS;
   
   c) SELECT COUNT(SALARY) AS TOTALSALARYENTRIES FROM CUSTOMERS;



6)  

   CREATE TABLE EMPLOYEE (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Department VARCHAR(50),
    Location VARCHAR(50),
    Salary DECIMAL(10, 2)
);

     INSERT INTO EMPLOYEE (ID, First_Name, Last_Name, Department, Location, Salary) VALUES
(1, 'Harshad', 'Kuwar', 'Marketing', 'Mumbai', 10000);
INSERT INTO EMPLOYEE (ID, First_Name, Last_Name, Department, Location, Salary) VALUES
(2, 'Anurag', 'Rajput', 'IT', 'Pune', 20000);
INSERT INTO EMPLOYEE (ID, First_Name, Last_Name, Department, Location, Salary) VALUES
(3, 'Chaitali', 'Tarle', 'IT', 'Chennai', 30000);
INSERT INTO EMPLOYEE (ID, First_Name, Last_Name, Department, Location, Salary) VALUES
(4, 'Pranjal', 'Patil', 'IT', 'Chennai', 25000);
INSERT INTO EMPLOYEE (ID, First_Name, Last_Name, Department, Location, Salary) VALUES
(5, 'Suraj', 'Tripathi', 'Marketing', 'Mumbai', 15000);
INSERT INTO EMPLOYEE (ID, First_Name, Last_Name, Department, Location, Salary) VALUES
(6, 'Roshni', 'Jadhav', 'Finance', 'Pune', 20000);
INSERT INTO EMPLOYEE (ID, First_Name, Last_Name, Department, Location, Salary) VALUES
(7, 'Sandhya', 'Jain', 'Finance', 'Bangalore', 20000);

  a) SELECT * FROM EMPLOYEE WHERE Department = 'IT' AND Location = 'Chennai';
  
  b) SELECT *  FROM EMPLOYEE WHERE Department = 'IT' OR Location = 'Chennai';
 
  c) SELECT First_Name AS "EMP FN", Location AS "Address" FROM EMPLOYEE;
    
     ALTER TABLE EMPLOYEE RENAME COLUMN Location TO addr;

  d) SELECT * FROM EMPLOYEE WHERE First_Name LIKE 'S%';

  e) SELECT location, SUM(Salary) AS Total_Salary FROM EMPLOYEE GROUP BY location;
 
   f) SELECT Location, SUM(Salary) AS Total_Salary FROM EMPLOYEE GROUP BY Location HAVING SUM(Salary) > 10000;

  g) SELECT *  FROM EMPLOYEE ORDER BY First_Name ASC;


7) a) SELECT COUNT(*) AS Students_Scoring_Above_75 FROM STUDENT WHERE Marks > 75;
   
   b) SELECT AVG(Marks) AS Average_Marks FROM STUDENT;

   c) SELECT MIN(Marks) AS Minimum_Marks FROM STUDENT;
 
   d) SELECT MAX(Marks) AS Maximum_Marks FROM STUDENT;


PROGRAM 8:
    

    CREATE TABLE Sailors (sid INT PRIMARY KEY, sname VARCHAR(50), rating INT,age DECIMAL(4,1));
 INSERT INTO Sailors (sid, sname, rating, age) VALUES
(22, 'Dustin', 7, 45.0);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(29, 'Brutus', 1, 33.0);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(31, 'Lubber', 8, 55.5);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(32, 'Andy', 8, 25.5);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(58, 'Rusty', 10, 35.0);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(64, 'Horatio', 7, 35.0);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(71, 'Zorba', 10, 16.0);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(74, 'Horatio', 9, 35.0);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(85, 'Art', 3, 25.5);
INSERT INTO Sailors (sid, sname, rating, age) VALUES
(95, 'Bob', 3, 63.5);
     
      CREATE TABLE Boats (bid INT PRIMARY KEY,bname VARCHAR(50), color VARCHAR(20));
INSERT INTO Boats (bid, bname, color) VALUES
(101, 'Interlake', 'blue');
INSERT INTO Boats (bid, bname, color) VALUES
(102, 'Interlake', 'red');
INSERT INTO Boats (bid, bname, color) VALUES
(103, 'Clipper', 'green');
INSERT INTO Boats (bid, bname, color) VALUES
(104, 'Marine', 'red');


     CREATE TABLE Reserves (sid INT,bid INT,day DATE,FOREIGN KEY (sid) REFERENCES Sailors(sid),FOREIGN KEY (bid) REFERENCES Boats(bid));
INSERT INTO Reserves (sid, bid, day) VALUES
(22, 101, TO_DATE('10/10/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(22, 102, TO_DATE('10/10/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(22, 103, TO_DATE('10/08/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(22, 104, TO_DATE('10/07/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(31, 102, TO_DATE('11/10/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(31, 103, TO_DATE('11/06/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(31, 104, TO_DATE('11/12/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(64, 101, TO_DATE('09/05/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(64, 102, TO_DATE('09/08/1998', 'MM/DD/YYYY'));
INSERT INTO Reserves (sid, bid, day) VALUES
(74, 103, TO_DATE('09/08/1998', 'MM/DD/YYYY'));

     select * from Sailors;
     select * from Boats;
     select * from Reserves;

a) insert data
b)SELECT DISTINCT sname FROM Sailors;
c)SELECT * FROM Sailors WHERE sid IN (SELECT sid FROM Reserves WHERE bid = 101);
d)SELECT DISTINCT sname FROM Sailors WHERE sid IN (SELECT sid FROM Reserves);
e) SELECT DISTINCT s.sname, s.age FROM Sailors s JOIN Reserves r ON s.sid = r.sid JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' ORDER BY s.age ASC;

f)SELECT DISTINCT s.sid, s.sname FROM Sailors s
JOIN Reserves r1 ON s.sid = r1.sid JOIN Reserves r2 ON s.sid = r2.sid
WHERE r1.bid <> r2.bid AND r1.day = r2.day;


program:9
 

  1)SELECT DISTINCT sid FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' UNION SELECT DISTINCT sid FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE b.color = 'green';

 2)SELECT DISTINCT sname FROM Sailors WHERE sid IN (SELECT sid FROM Reserves WHERE bid = 103);
  
 3)SELECT sname, age FROM Sailors WHERE age = (SELECT MIN(age) FROM Sailors);
    
 4) SELECT sname FROM Sailors s WHERE NOT EXISTS (SELECT bid FROM Boats EXCEPT SELECT r.bid FROM Reserves r WHERE r.sid = s.sid);
 
PROGRAM:10
   
  1)SELECT sname, age FROM Sailors WHERE age = (SELECT MIN(age) FROM Sailors);
   
 2)SELECT rating, AVG(age) AS avg_age FROM Sailors GROUP BY rating;
   3)SELECT COUNT(DISTINCT sname) AS unique_sailor_names FROM Sailors;
  4)SELECT AVG(age) AS average_age FROM Sailors;
 




DECLARE
    num        NUMBER := 12121;  -- Number to check
    original   NUMBER := num;
    reversed   NUMBER := 0;
    remainder  NUMBER;
BEGIN
    -- Reverse the number
    WHILE num > 0 LOOP
        remainder := MOD(num, 10);
        reversed := (reversed * 10) + remainder;
        num := TRUNC(num / 10);
    END LOOP;

    -- Check if the original number is equal to the reversed
    IF original = reversed THEN
        DBMS_OUTPUT.PUT_LINE(original || ' is a Palindrome number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(original || ' is NOT a Palindrome number.');
    END IF;
END;
/


DECLARE
    n         NUMBER := 10; -- Change this to the number of Fibonacci terms you want
    a         NUMBER := 0;
    b         NUMBER := 1;
    temp      NUMBER;
    i         NUMBER := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Fibonacci Series:');
    WHILE i <= n LOOP
        DBMS_OUTPUT.PUT_LINE(a);
        temp := a + b;
        a := b;
        b := temp;
        i := i + 1;
    END LOOP;
END;
/

DECLARE
    start_year NUMBER := 2000;  -- Starting year of the range
    end_year   NUMBER := 2025;  -- Ending year of the range
    year       NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Leap Years from ' || start_year || ' to ' || end_year || ':');
    
    FOR year IN start_year .. end_year LOOP
        IF (MOD(year, 4) = 0 AND MOD(year, 100) != 0) OR (MOD(year, 400) = 0) THEN
            DBMS_OUTPUT.PUT_LINE(year);
        END IF;
    END LOOP;
END;
/






DECLARE
    num         NUMBER := 12345;  -- The number to reverse
    reversed    NUMBER := 0;
    remainder   NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Original Number: ' || num);

    WHILE num > 0 LOOP
        remainder := MOD(num, 10);           -- Get last digit
        reversed := (reversed * 10) + remainder;  -- Append digit
        num := TRUNC(num / 10);              -- Remove last digit
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Reversed Number: ' || reversed);
END;
/

DECLARE
    n         NUMBER := 1000; -- Upper limit
    i         NUMBER;
    num       NUMBER;
    rem       NUMBER;
    sum       NUMBER;
    digits    NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Armstrong numbers up to ' || n || ':');

    FOR i IN 1..n LOOP
        num := i;
        sum := 0;
        digits := LENGTH(TO_CHAR(num)); -- Count of digits

        WHILE num > 0 LOOP
            rem := MOD(num, 10);
            sum := sum + POWER(rem, digits);
            num := TRUNC(num / 10);
        END LOOP;

        IF sum = i THEN
            DBMS_OUTPUT.PUT_LINE(i);
        END IF;
    END LOOP;
END;



DECLARE
    n   NUMBER := 50; -- Set the upper limit
    i   NUMBER;
    j   NUMBER;
    flag BOOLEAN;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Prime numbers up to ' || n || ':');

    FOR i IN 2..n LOOP
        flag := TRUE;
        FOR j IN 2..i - 1 LOOP
            IF MOD(i, j) = 0 THEN
                flag := FALSE;
                EXIT;
            END IF;
        END LOOP;

        IF flag THEN
            DBMS_OUTPUT.PUT_LINE(i);
        END IF;
    END LOOP;
END;
