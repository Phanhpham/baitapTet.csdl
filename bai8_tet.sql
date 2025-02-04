use baitapTet;

CREATE TABLE Students_b8 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    DepartmentID VARCHAR(10),
    Scholarship DECIMAL(10,2)
);

INSERT INTO  Students_b8 (StudentID, FullName, DepartmentID, Scholarship) VALUES
('SV001', 'Nguyen Van An', 'K002', 150000),
('SV002', 'Tran Thi Binh', 'K003', 200000),
('SV003', 'Le Duy Phong', 'K001', 50000),
('SV004', 'Pham Ngoc Ha', 'K004', 120000),
('SV005', 'Hoang Minh Tam', 'K003', 250000),
('SV006', 'Vu Quoc Hoi', 'K001', 80000);


SELECT StudentID, FullName, DepartmentID, Scholarship
FROM  Students_b8
WHERE Scholarship > 100000
ORDER BY DepartmentID DESC;
