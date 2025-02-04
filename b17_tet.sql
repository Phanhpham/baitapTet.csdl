use baitapTet;

CREATE TABLE Students_b17 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    BirthDate DATE,
    Scholarship DECIMAL(10,2)
);
INSERT INTO Students_b17 (StudentID, FullName, BirthDate, Scholarship) VALUES
('SV001', 'Nguyen Van An', '2002-05-10', 150000),
('SV002', 'Tran Thi Binh', '2001-08-15', 200000),
('SV003', 'Le Duy Phong', '2003-03-22', 100000),
('SV004', 'Pham Ngoc Ha', '2000-11-05', 180000),
('SV005', 'Hoang Minh Tam', '1999-07-18', 250000),
('SV006', 'Vu Quoc Hoi', '2004-09-20', 120000);

SELECT FullName, TIMESTAMPDIFF(YEAR, BirthDate, CURDATE()) AS Age, Scholarship
FROM Students_b17
WHERE TIMESTAMPDIFF(YEAR, BirthDate, CURDATE()) > 20;
