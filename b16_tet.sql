use baitapTet;

CREATE TABLE Students_b16 (
    StudentID VARCHAR(10) PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    BirthPlace VARCHAR(100),
    BirthDate DATE
);
INSERT INTO Students_b16 (StudentID, LastName, FirstName, BirthPlace, BirthDate) VALUES
('SV001', 'Nguyen', 'Van An', 'Hà Nội', '2002-02-10'),
('SV002', 'Tran', 'Thi Binh', 'TP Hồ Chí Minh', '2001-08-15'),
('SV003', 'Le', 'Duy Phong', 'Hải Phòng', '2003-03-22'),
('SV004', 'Pham', 'Ngoc Ha', 'Hà Nội', '2002-02-25'),
('SV005', 'Hoang', 'Minh Tam', 'Đà Nẵng', '2000-07-18'),
('SV006', 'Vu', 'Quoc Hoi', 'Hà Nội', '2001-09-20');

SELECT LastName, FirstName, BirthPlace, BirthDate
FROM Students_b16
WHERE BirthPlace = 'Hà Nội'
AND MONTH(BirthDate) = 2;
