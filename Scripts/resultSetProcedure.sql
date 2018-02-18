use cliTest;

DELIMITER //

CREATE PROCEDURE GetStudentsByCourseId (IN cid int(11))
BEGIN
	SELECT * FROM Students WHERE CourseId = cid;
END//

DELIMITER ;
