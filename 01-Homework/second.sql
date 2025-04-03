
INSERT INTO Student(id,firstName,lastName,dateOfBirth,enrolledDate,gender,nationalNumber,studentCardNumber)
VALUES (1,'Agan','Dardhishta',02/06/2003, 01/10/2024,'male',1,22);

INSERT INTO Teacher(id,firstName,lastName,dateOfBirth,academicRank,hireDate)
VALUES (2,'Hristina','Bozhinovska',03/03/2000, 3, 04/05/2024);

INSERT INTO GradeDetails(id,gradeId,achievementTypeId,achievementPoints,achievementMaxPoints,achievementDate)
VALUES (3,18,4,50,400,06/05/2018);

INSERT INTO Course(id,name,credit,academicYear,semester)
VALUES (4,'Qinshift',60,2024/2025,2);

INSERT INTO Grade(id,studentId,courseId,teacherId,grade,comment,createdDate)
VALUES (5,1,2244,2,9,'This is a comment',04/06/2024);

INSERT INTO AchievementType(id,name,description,participationRate)
VALUES (6,'Professional Web Dev','Student managed to get goood grades and achieve title professional web developer',80.6)