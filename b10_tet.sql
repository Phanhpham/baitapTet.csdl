
use baitapTet;

CREATE TABLE Students_b10 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    DepartmentID VARCHAR(10),
    Gender VARCHAR(10) 
);


CREATE TABLE Departments_b10 (
    DepartmentID VARCHAR(10) PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Departments_b10 (DepartmentID, DepartmentName) VALUES
('K001', 'Anh văn'),
('K002', 'Vật lý'),
('K003', 'Toán học'),
('K004', 'Hóa học');

INSERT INTO Students_b10 (StudentID, FullName, DepartmentID, Gender) VALUES
('SV001', 'Nguyen Van An', 'K001', 'Male'),
('SV002', 'Tran Thi Binh', 'K002', 'Female'),
('SV003', 'Le Duy Phong', 'K003', 'Male'),
('SV004', 'Pham Ngoc Ha', 'K001', 'Female'),
('SV005', 'Hoang Minh Tam', 'K002', 'Male'),
('SV006', 'Vu Quoc Hoi', 'K004', 'Male');

SELECT StudentID, DepartmentID, Gender
FROM Students_b10
WHERE DepartmentID IN ('K001', 'K002');
