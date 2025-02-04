use baitapTet;

CREATE TABLE Students_b28 (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Faculty VARCHAR(50),
    Gender ENUM('Male', 'Female'),
    StudentCount INT
);

INSERT INTO Students_b28 (Faculty, Gender, StudentCount) VALUES 
('Computer Science', 'Male', 120),
('Computer Science', 'Female', 80),
('Economics', 'Male', 90),
('Economics', 'Female', 110),
('Medicine', 'Male', 70),
('Medicine', 'Female', 130);

SELECT Faculty,
       SUM(CASE WHEN Gender = 'Male' THEN StudentCount ELSE 0 END) AS TotalMaleStudents,
       SUM(CASE WHEN Gender = 'Female' THEN StudentCount ELSE 0 END) AS TotalFemaleStudents
FROM Students_b28
GROUP BY Faculty;

