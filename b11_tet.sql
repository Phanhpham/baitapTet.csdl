use baitapTet;

CREATE TABLE Students_b11 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    BirthDate DATE,
    BirthPlace VARCHAR(100),
    Scholarship DECIMAL(10,2)
);

INSERT INTO Students_b11  (StudentID, FullName, BirthDate, BirthPlace, Scholarship) VALUES
('SV001', 'Nguyen Van An', '1991-03-10', 'Hà Nội', 150000),
('SV002', 'Tran Thi Binh', '1992-06-01', 'TP Hồ Chí Minh', 200000),
('SV003', 'Le Duy Phong', '1993-07-22', 'Hải Phòng', 50000),
('SV004', 'Pham Ngoc Ha', '1992-05-10', 'Hà Nội', 180000),
('SV005', 'Hoang Minh Tam', '1990-12-18', 'Đà Nẵng', 250000),
('SV006', 'Vu Quoc Hoi', '1991-11-20', 'Hà Nội', 120000);

SELECT StudentID, BirthDate, BirthPlace, Scholarship
FROM Students_b11 
WHERE BirthDate BETWEEN '1991-01-01' AND '1992-06-05';
