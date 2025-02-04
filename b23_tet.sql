use baitapTet;

CREATE TABLE Departments_b23 (
    DepartmentID VARCHAR(10) PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Students_b23 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    Gender VARCHAR(10),
    DepartmentID VARCHAR(10),
    BirthDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments_b23 (DepartmentID, DepartmentName) VALUES
('K001', 'Anh văn'),
('K002', 'Tin học'),
('K003', 'Toán học'),
('K004', 'Vật lý');

INSERT INTO Students_b23 (StudentID, FullName, Gender, DepartmentID, BirthDate) VALUES
('SV001', 'Nguyen Van An', 'Male', 'K001', '2002-05-10'),
('SV002', 'Tran Thi Binh', 'Female', 'K002', '2001-08-15'),
('SV003', 'Le Duy Phong', 'Male', 'K003', '2003-03-22'),
('SV004', 'Pham Ngoc Ha', 'Female', 'K001', '2000-11-05'),
('SV005', 'Hoang Minh Tam', 'Male', 'K002', '1999-07-18'),
('SV006', 'Vu Quoc Hoi', 'Male', 'K003', '2004-09-20');


SELECT D.DepartmentID, D.DepartmentName, COUNT(S.StudentID) AS TotalStudents
FROM Departments_b23 D
LEFT JOIN Students_b23 S ON D.DepartmentID = S.DepartmentID
GROUP BY D.DepartmentID, D.DepartmentName;

