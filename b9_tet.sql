use baitapTet;

CREATE TABLE Students_b9 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    DepartmentID VARCHAR(10),
    BirthPlace VARCHAR(100),
    Scholarship DECIMAL(10,2)
);

INSERT INTO Students_b9 (StudentID, FullName, DepartmentID, BirthPlace, Scholarship) VALUES
('SV001', 'Nguyen Van An', 'K002', 'Hà Nội', 150000),
('SV002', 'Tran Thi Binh', 'K003', 'TP Hồ Chí Minh', 200000),
('SV003', 'Le Duy Phong', 'K001', 'Hải Phòng', 50000),
('SV004', 'Pham Ngoc Ha', 'K004', 'Hà Nội', 180000),
('SV005', 'Hoang Minh Tam', 'K003', 'Đà Nẵng', 250000),
('SV006', 'Vu Quoc Hoi', 'K001', 'Hà Nội', 120000);

SELECT FullName, DepartmentID, BirthPlace, Scholarship
FROM Students_b9
WHERE Scholarship >= 150000 AND BirthPlace = 'Hà Nội';
