USE LOBdata;

DROP TABLE IF EXISTS EmployeeLOB;

CREATE TABLE EmployeeLOB(
		eid int NOT NULL,
		ename varchar(20),
		email varchar(20),
		doh date,
		salary float(14,2),
		resume LongText,
		photo MEDIUMBLOB
);

INSERT INTO EmployeeLOB (eid, ename, email, doh, salary)
		VALUES (1, 'Ryan', 'ryan@email.com', '2018-02-15', '65000');
