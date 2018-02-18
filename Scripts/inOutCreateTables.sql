use cliTest;

DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;

CREATE TABLE Courses (

	CourseId int NOT NULL,
	CourseTitle varchar(25),
	Fees double(10,2) /*,

	PRIMARY KEY(CourseId) */
);

CREATE TABLE Students (

	RollNumber int NOT NULL,
	StudentName varchar(50),
	CourseId int,
	Fees double(10,2),
	Percentage double(10,2) /*,

	PRIMARY KEY(RollNumber),
	FOREIGN KEY(CourseId) REFERENCES Courses(CourseId) */
);
