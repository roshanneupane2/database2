CREATE DATABASE roshandb;
USE roshandb;
CREATE TABLE mytables (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20) UNIQUE,
    age INT NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    dob DATE NOT NULL,
    address VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO mytables
(full_name, email, phone, age, gender, dob, address)
VALUES
('Roshan Neupane', 'roshan@example.com', '9800000001', 21, 'Male', '2004-01-10', 'Kathmandu, Nepal'),
('Sita Sharma', 'sita@example.com', '9800000002', 23, 'Female', '2002-03-15', 'Pokhara, Nepal'),
('Hari Thapa', 'hari@example.com', '9800000003', 25, 'Male', '2000-07-20', 'Butwal, Nepal'),
('Gita Rai', 'gita@example.com', '9800000004', 22, 'Female', '2003-09-12', 'Jhapa, Nepal'),
('Bikash Karki', 'bikash@example.com', '9800000005', 24, 'Male', '2001-05-18', 'Lalitpur, Nepal'),
('Anisha Gurung', 'anisha@example.com', '9800000006', 20, 'Female', '2005-11-30', 'Chitwan, Nepal'),
('Rabina Magar', 'rabina@example.com', '9800000007', 26, 'Female', '1999-08-22', 'Dharan, Nepal'),
('Kamal Bhandari', 'kamal@example.com', '9800000008', 28, 'Male', '1997-10-05', 'Biratnagar, Nepal'),
('Nabin Khadka', 'nabin@example.com', '9800000009', 23, 'Male', '2002-12-14', 'Bhaktapur, Nepal'),
('Sarita Tamang', 'sarita@example.com', '9800000010', 22, 'Female', '2003-04-03', 'Hetauda, Nepal');
SELECT * FROM mytables;
