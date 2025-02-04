use baitapTet;

CREATE TABLE Departments_b14(
    DepartmentID VARCHAR(10) PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Students_b14 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    DepartmentID VARCHAR(10),
    Gender VARCHAR(10) 
);

INSERT INTO Departments_b14 (DepartmentID, DepartmentName) VALUES
('K001', 'Anh văn'),
('K002', 'Tin học'),
('K003', 'Toán học'),
('K004', 'Vật lý');

INSERT INTO Students_b14 (StudentID, FullName, DepartmentID, Gender) VALUES
('SV001', 'Nguyen Van An', 'K001', 'Male'),
('SV002', 'Tran Thi Binh', 'K002', 'Female'),
('SV003', 'Le Duy Phong', 'K003', 'Male'),
('SV004', 'Pham Ngoc Ha', 'K001', 'Female'),
('SV005', 'Hoang Minh Tam', 'K002', 'Male'),
('SV006', 'Vu Quoc Hoi', 'K004', 'Male');

SELECT Students_b14.StudentID, Students_b14.FullName, Departments_b14.DepartmentName, Students_b14.Gender
FROM Students_b14
JOIN Departments_b14 ON Students_b14.DepartmentID = Departments_b14.DepartmentID
WHERE Students_b14.Gender = 'Male' 
AND Students_b14.DepartmentID IN ('K001', 'K002');

