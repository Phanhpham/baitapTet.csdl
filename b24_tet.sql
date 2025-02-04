use baitapTet;

CREATE TABLE Scholarship_b26 (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Faculty VARCHAR(50),
    ScholarshipCount INT
);

INSERT INTO Scholarship_b26 (Faculty, ScholarshipCount) VALUES 
('Computer Science', 50),
('Economics', 40),
('Medicine', 60),
('Computer Science', 30),
('Economics', 20),
('Medicine', 50);

-- tong so hoc bổng môi khoa
SELECT Faculty, SUM(ScholarshipCount) AS TotalScholarships
FROM Scholarship_b26
GROUP BY Faculty;
-- hoc bong cao nhat moi khoa
SELECT Faculty, MAX(ScholarshipCount) AS MaxScholarship
FROM Scholarship_b26
GROUP BY Faculty;
