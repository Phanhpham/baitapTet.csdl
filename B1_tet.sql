create database baitapTet;

use baitapTet;

CREATE TABLE Students (
    StudentID VARCHAR(10) PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(20),
    Scholarship DECIMAL(10,2)
);
INSERT INTO Students (StudentID, LastName, FirstName, Scholarship) VALUES
('SV001', 'Pham', 'Linh', 1700000),
('SV002', 'Tran', 'Hai', 2000000),
('SV003', 'Le', 'Trong', 2000000),
('SV004', 'Pham', 'Phupng', 300000);


SELECT StudentID, LastName, FirstName, Scholarship
FROM Students
ORDER BY StudentID ASC;
