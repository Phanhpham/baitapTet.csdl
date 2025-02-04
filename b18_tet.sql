use baitapTet;

CREATE TABLE Departments_b18 (
    DepartmentID VARCHAR(10) PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Students_b18 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    BirthDate DATE,
    DepartmentID VARCHAR(10)
);
INSERT INTO Departments_b18 (DepartmentID, DepartmentName) VALUES
('K001', 'Anh văn'),
('K002', 'Tin học'),
('K003', 'Toán học'),
('K004', 'Vật lý');

INSERT INTO Students_b18 (StudentID, FullName, BirthDate, DepartmentID) VALUES
('SV001', 'Nguyen Van An', '2002-05-10', 'K001'),
('SV002', 'Tran Thi Binh', '2001-08-15', 'K002'),
('SV003', 'Le Duy Phong', '2003-03-22', 'K003'),
('SV004', 'Pham Ngoc Ha', '2000-11-05', 'K001'),
('SV005', 'Hoang Minh Tam', '1999-07-18', 'K002'),
('SV006', 'Vu Quoc Hoi', '2004-09-20', 'K003');

SELECT S.FullName, TIMESTAMPDIFF(YEAR, S.BirthDate, CURDATE()) AS Age, D.DepartmentName
FROM Students_b18 S
JOIN Departments_b18 D ON S.DepartmentID = D.DepartmentID
WHERE TIMESTAMPDIFF(YEAR, S.BirthDate, CURDATE()) BETWEEN 20 AND 25;

