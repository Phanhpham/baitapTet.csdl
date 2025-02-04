use baitapTet;

CREATE TABLE Students_b12 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    BirthDate DATE,
    Gender VARCHAR(10), 
    DepartmentID VARCHAR(10),
    Scholarship DECIMAL(10,2)
);

INSERT INTO Students_b12 (StudentID, FullName, BirthDate, Gender, DepartmentID, Scholarship) VALUES
('SV001', 'Nguyen Van An', '2002-05-10', 'Male', 'K002', 150000),
('SV002', 'Tran Thi Binh', '2001-08-15', 'Female', 'K003', 200000),
('SV003', 'Le Duy Phong', '2003-03-22', 'Male', 'K001', 100000),
('SV004', 'Pham Ngoc Ha', '2002-11-05', 'Female', 'K004', 120000),
('SV005', 'Hoang Minh Tam', '2000-07-18', 'Male', 'K003', 75000),
('SV006', 'Vu Quoc Hoi', '2001-09-20', 'Male', 'K001', 80000);

SELECT StudentID, BirthDate, Gender, DepartmentID
FROM Students_b12
WHERE Scholarship BETWEEN 80000 AND 150000;
