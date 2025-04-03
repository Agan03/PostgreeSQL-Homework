CREATE TABLE Student (
    id SERIAL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    dateOfBirth DATE NOT NULL,
    enrolledDate DATE NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('male', 'female', 'other')) NOT NULL,
    nationalNumber INT UNIQUE NOT NULL,
    studentCardNumber INT UNIQUE NOT NULL
);

CREATE TABLE Teacher (
    id SERIAL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    dateOfBirth DATE NOT NULL,
    academicRank INT NOT NULL,
    hireDate DATE NOT NULL
);

CREATE TABLE Course (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    credit INT NOT NULL,
    academicYear VARCHAR(9) NOT NULL,
    semester INT CHECK (semester BETWEEN 1 AND 2) NOT NULL
);

CREATE TABLE Grade (
    id SERIAL PRIMARY KEY,
    studentId INT REFERENCES Student(id) ON DELETE CASCADE,
    courseId INT REFERENCES Course(id) ON DELETE CASCADE,
    teacherId INT REFERENCES Teacher(id) ON DELETE SET NULL,
    grade INT CHECK (grade BETWEEN 1 AND 10) NOT NULL,
    comment TEXT,
    createdDate DATE NOT NULL
);

CREATE TABLE AchievementType (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    participationRate DECIMAL(5,2) CHECK (participationRate BETWEEN 0 AND 100) NOT NULL
);

CREATE TABLE GradeDetails (
    id SERIAL PRIMARY KEY,
    gradeId INT REFERENCES Grade(id) ON DELETE CASCADE,
    achievementTypeId INT REFERENCES AchievementType(id) ON DELETE CASCADE,
    achievementPoints INT NOT NULL,
    achievementMaxPoints INT NOT NULL,
    achievementDate DATE NOT NULL
);
