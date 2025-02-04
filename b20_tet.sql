use baitapTet;

CREATE TABLE Students_b20 (
    StudentID VARCHAR(10) PRIMARY KEY,
    Gender VARCHAR(10), 
    DepartmentID VARCHAR(10),
    Scholarship DECIMAL(10,2)
);

INSERT INTO Students_b20 (StudentID, Gender, DepartmentID, Scholarship) VALUES
('SV001', 'Male', 'K001', 600000),
('SV002', 'Female', 'K002', 400000),
('SV003', 'Male', 'K003', 700000),
('SV004', 'Female', 'K001', 300000),
('SV005', 'Male', 'K002', 800000),
('SV006', 'Male', 'K003', 500000);

SELECT StudentID, Gender, DepartmentID, 
       CASE 
           WHEN Scholarship > 500000 THEN 'Học bổng cao'
           ELSE 'Mức trung bình'
       END AS ScholarshipLevel
FROM Students_b20;
