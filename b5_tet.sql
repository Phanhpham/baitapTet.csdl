use baitapTet;
CREATE TABLE Students_b5 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    BirthDate DATE,
    Gender VARCHAR(10) 
);
INSERT INTO Students_b5 (StudentID, FullName, BirthDate, Gender) VALUES
('SV001', 'Nguyen Van An', '2002-05-10', 'Male'),
('SV002', 'Tran Thi Binh', '2001-08-15', 'Female'),
('SV003', 'Le Duy Chi', '2003-03-22', 'Male'),
('SV004', 'Pham Ngoc Ha', '2002-11-05', 'Female'),
('SV005', 'Hoang Minh Tami', '2000-07-18', 'Male'),
('SV006', 'Vu Quoc Hoi', '2001-09-20', 'Male');

SELECT FullName, BirthDate, Gender
FROM Students_b5
WHERE FullName LIKE '%I';
