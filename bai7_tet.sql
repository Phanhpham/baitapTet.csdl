use baitapTet;

CREATE TABLE Students_b7(
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    BirthDate DATE,
    Gender VARCHAR(10) 
);

INSERT INTO Students_b7 (StudentID, FullName, BirthDate, Gender) VALUES
('SV001', 'Nguyen Van Hiếu', '2002-05-10', 'Male'),
('SV002', 'Tran Thi Bảo', '2001-08-15', 'Female'),
('SV003', 'Le Duy Phong', '2003-03-22', 'Male'),
('SV004', 'Pham Thi Hồng', '2002-11-05', 'Female'),
('SV005', 'Hoang Minh Tam', '2000-07-18', 'Male'),
('SV006', 'Vu Thi Hoa', '2001-09-20', 'Female');

SELECT StudentID, FullName, BirthDate, Gender
FROM Students_b7
WHERE FullName LIKE '% Thị %';


