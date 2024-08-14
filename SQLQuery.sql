create database Taskes
use BlueCloud_Taskes
alter database Taskes modify name = BlueCloud_Taskes

-- Create Students Table ---
CREATE TABLE Students (
    StudentID INT PRIMARY KEY ,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Courses Table ---
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY ,
    CourseName VARCHAR(100) NOT NULL,
    CourseDescription TEXT,
    Credits INT
);

-- Create Instructors Table ---
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY ,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Department VARCHAR(100)
);
 
-- Create Enrollments Table (Junction Table for Students and Courses) ---
CREATE TABLE Enrollments (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Create Teaches Table (Junction Table for Instructors and Courses) ---
CREATE TABLE Teaches (
    InstructorID INT,
    CourseID INT,
    TeachingSemester VARCHAR(50),
    PRIMARY KEY (InstructorID, CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-----------insert Data into tables (Students)---------

INSERT INTO Students (StudentID,FirstName, LastName, DateOfBirth, Email)
VALUES
(1,'Ahmed', 'Adel', '2001-04-15', 'ahmed.adel@example.com'),
(2,'Mohammed', 'Salah', '2002-08-22', 'mosalah@example.com'),
(3,'Ali', 'Yasser', '2001-12-10', 'aliyasser101@example.com'),
(4,'Said', 'Magdy', '2002-9-14', 'said.magdy@example.com'),
(5,'Mostafa', 'Khaled', '2003-12-10', 'mostafakhaled201@example.com'),
(6,'Alaa', 'Mohammed', '2004-12-10', 'alaamohammed4@example.com'),
(7,'Salma', 'Nader', '2001-6-9', 'salmanaderr@example.com'),
(8,'Ahmed', 'Magdy', '2009-11-8', 'ahmed.magdy1@example.com'),
(9,'Mohammed', 'Wael', '2002-1-10', 'mohammedwael@example.com'),
(10,'sandy', 'Sheref', '2005-1-1', 'sandy501@example.com');

-----------insert Data into tables (Courses)---------

INSERT INTO Courses (CourseID, CourseName, CourseDescription, Credits)
VALUES
(01,'Introduction to Computer Science', 'Basic concepts of computer science and programming.', 4),
(02,'Database Systems', 'Introduction to database management systems and SQL.', 3),
(03, 'Algorithms and Data Structures', 'Study of algorithms and data structures for efficient computing.', 8),
(04,'Introduction to information Technology', 'Basic concepts of information Technology and programming.', 9),
(05,'Database Systems', 'Introduction to database management systems and SQL.', 3),
(06, 'Algorithms and Data Structures', 'Study of algorithms and data structures for efficient computing.', 5),
(07,'Introduction to Computer Science', 'Basic concepts of computer science and programming.', 4),
(08,'Introduction to information Technology', 'Basic concepts of information Technology and programming.', 1),
(09, 'Algorithms and Data Structures', 'Study of algorithms and data structures for efficient computing.', 6),
(010,'Introduction to Computer Science', 'Basic concepts of computer science and programming.', 11),
(011,'Introduction to information Technology', 'Basic concepts of information Technology and programming.', 2),
(012, 'Introduction to information Technology', 'Basic concepts of information Technology and programming.', 7),
(013,'Introduction to Computer Science', 'Basic concepts of computer science and programming.', 9),
(014,'Database Systems', 'Introduction to database management systems and SQL.', 3),
(015, 'Algorithms and Data Structures', 'Study of algorithms and data structures for efficient computing.', 4);

DELETE FROM Courses
WHERE CourseID = 05;
DELETE FROM Courses
WHERE CourseID = 06;
DELETE FROM Courses
WHERE CourseID = 07;
DELETE FROM Courses
WHERE CourseID = 08;
DELETE FROM Courses
WHERE CourseID = 09;
DELETE FROM Courses
WHERE CourseID = 010;
DELETE FROM Courses
WHERE CourseID = 011;
DELETE FROM Courses
WHERE CourseID = 012;
DELETE FROM Courses
WHERE CourseID = 013;
DELETE FROM Courses
WHERE CourseID = 014;
DELETE FROM Courses
WHERE CourseID = 015;


-----------insert Data into tables (Instructors)---------

INSERT INTO Instructors (InstructorID, FirstName, LastName, Email, Department)
VALUES
(1, 'Mostafa', 'Khaled', 'mostafa.khaled@university.edu', 'Computer Science'),
(2, 'Sama', 'Mostafa', 'sama.201@university.edu', 'Mechatronics'),
(3, 'Ahmed', 'Waleed', 'ahmed.waleed@university.edu', 'Information System'),
(4, 'Ali', 'Mohammed', 'alimohamed@university.edu', 'Information Technology'),
(5, 'Eman', 'Abdallah', 'emanabdallah6@university.edu', 'Mathematics');

-----------insert Data into tables (Enrollments)---------

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, '2024-01-15'),  -- Ahmed Adel enrolled in Introduction to Computer Science
(1, 2, '2024-01-16'),  -- Ahmed Adel also enrolled in Database Systems
(2, 1, '2024-01-17'),  -- Mohammed Salah in Introduction to Computer Science
(3, 3, '2024-01-18'),  -- Ali Yasser enrolled in Algorithms and Data Structures
(4, 3, '2024-01-18'),  -- Said Magdy enrolled in Algorithms and Data Structures
(5, 1, '2024-01-15'),  -- Mostafa Khaled enrolled in Introduction to Computer Science
(6, 2, '2024-01-16'),  -- Alaa Mohammed also enrolled in Database Systems
(6, 1, '2024-01-17'),  -- Alaa Mohammed in Introduction to Computer Science
(7, 3, '2024-01-18'),  -- Salma Mader enrolled in Algorithms and Data Structures
(8, 1, '2024-01-15'),  -- Ahmed Magdy enrolled in Introduction to Computer Science
(8, 2, '2024-01-16'),  -- Ahmed Magdy also enrolled in Database Systems
(9, 1, '2024-01-17'),  -- Mohammed Wael in Introduction to Computer Science
(9, 3, '2024-01-18'),  -- Mohammed Wael enrolled in Algorithms and Data Structures
(10, 1, '2024-01-17');  -- Sandy Sheref in Introduction to Computer Science

-----------insert Data into tables (Teaches)---------


INSERT INTO Teaches (InstructorID, CourseID, TeachingSemester)
VALUES
(1, 1, 'Fall 2024'),  -- John Doe teaches Introduction to Computer Science
(2, 2, 'Spring 2024'), -- Jane Smith teaches Database Systems
(3, 3, 'Fall 2024');  -- Emily Davis teaches Algorithms and Data Structures

--------Select---------

select * from Students
select * from Courses
select * from Instructors
select * from Enrollments
select * from Teaches

--------Select by join------

SELECT s.StudentID, s.FirstName, s.LastName, s.DateOfBirth, s.Email
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Introduction to information Technology';

--------Select by Group By------

SELECT s.StudentID, s.FirstName, s.LastName, s.DateOfBirth, s.Email 
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Introduction to information Technology'
GROUP BY s.StudentID, s.FirstName, s.LastName, s.DateOfBirth, s.Email;










