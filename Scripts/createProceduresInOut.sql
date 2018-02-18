use cliTest;

DROP PROCEDURE IF EXISTS GetCourseFeesById;
DROP PROCEDURE IF EXISTS EnrollStudent;

DELIMITER //

CREATE PROCEDURE GetCourseFeesById(IN cid int(11), OUT cfees double(10,2))
BEGIN
	SELECT Fees INTO cfees FROM Courses WHERE CourseId = cid;
END//

CREATE PROCEDURE EnrollStudent(IN rno int(11), IN sname varchar(50), IN cid int(11), INOUT cfees double(10,2), IN spercent double(10,2))
BEGIN
	set cfees = cfees - (spercent * 5);
	INSERT INTO Students VALUES (rno,sname,cid,cfees,spercent);	
END//

DELIMITER ;
