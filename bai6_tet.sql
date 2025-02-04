use baitapTet;

CREATE TABLE Departments (
    DepartmentID VARCHAR(10) PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
('K001', 'Kinh tế'),
('K002', 'Nông nghiệp'),
('K003', 'Công nghệ thông tin'),
('K004', 'Ngữ văn'),
('K005', 'Ngoại ngữ'),
('K006', 'Y dược');

SELECT DepartmentID, DepartmentName
FROM Departments
WHERE DepartmentName LIKE '_N%';



