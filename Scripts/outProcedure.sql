use cliTest;

DELIMITER //

CREATE PROCEDURE getSalary(IN eid int(11), OUT sal double(8,2))
BEGIN
	SELECT SALARY INTO sal FROM NewEmployees WHERE EMPLOYEE_ID = eid;
END//

DELIMITER ;
