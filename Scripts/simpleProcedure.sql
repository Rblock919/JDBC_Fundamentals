use cliTest;

DELIMITER //

CREATE PROCEDURE AddNewEmployee (IN eid int(11), IN ename varchar(25), IN email varchar(25), IN doj date, IN sal double(8,2))
BEGIN
	INSERT INTO NewEmployees (EMPLOYEE_ID, EMPLOYEE_NAME, EMAIL, HIRE_DATE, SALARY) VALUES (eid, ename, email, doj, sal);
END//

DELIMITER ;
