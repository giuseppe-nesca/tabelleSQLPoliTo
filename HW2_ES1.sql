/*
  Creation of the tables.
 */

CREATE TABLE COURSE (
  CourseCode CHAR(10) PRIMARY KEY,
  CourseName CHAR(30) NOT NULL,
  Year       INTEGER
    CONSTRAINT Year_Constraint CHECK (Year IS NOT NULL AND Year > 0),
  Semester   SMALLINT
    CONSTRAINT Semester_Constraint CHECK (Semester IS NOT NULL AND Semester > 0)
);

CREATE TABLE COURSE_SCHEDULE (
  CourseCode CHAR(10),
  DayOfWeek  CHAR(10) NOT NULL,
  StartTime  INTEGER
    CONSTRAINT StartTime_Constraint CHECK (StartTime IS NOT NULL AND StartTime > 0),
  EndTime    INTEGER
    CONSTRAINT EndTime_Constraint CHECK (EndTime IS NOT NULL AND EndTime > 0),
  Room       CHAR(5)  NOT NULL,
  PRIMARY KEY (CourseCode, DayOfWeek, StartTime),
  FOREIGN KEY (CourseCode) REFERENCES COURSE (CourseCode)
  ON DELETE CASCADE
);

/*
  Population of table COURSE
 */

INSERT INTO COURSE (CourseCode, CourseName, Year, Semester)
VALUES ('AB273', 'Analeasy I', 1, 1);

INSERT INTO COURSE (CourseCode, CourseName, Year, Semester)
VALUES ('CD110', 'Algoritmi e frustrazione', 2, 1);

INSERT INTO COURSE (CourseCode, CourseName, Year, Semester)
VALUES ('LR924', 'Elettronica applicata e budini', 3, 2);

INSERT INTO COURSE (CourseCode, CourseName, Year, Semester)
VALUES ('PO001', 'Corso stupendo, dovresti provarlo', 1, 1);

INSERT INTO COURSE (CourseCode, CourseName, Year, Semester)
VALUES ('KQ312', 'HAI AI AHI', 3, 1);
