use pfs54;
CREATE DATABASE JobPortalDB;
USE JobPortalDB;

CREATE TABLE Candidates
(
    candidate_id INT PRIMARY KEY,
    candidate_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(15),
    qualification VARCHAR(50),
    experience INT,
    city VARCHAR(30)
);
INSERT INTO Candidates
(candidate_id, candidate_name, email, phone, qualification, experience, city)
VALUES
(1, 'Rahul Sharma', 'rahul.sharma@gmail.com', '9876543210', 'B.Tech', 2, 'Hyderabad'),
(2, 'Priya Reddy', 'priya.reddy@gmail.com', '9876543211', 'MCA', 1, 'Bangalore'),
(3, 'Amit Kumar', 'amit.kumar@gmail.com', '9876543212', 'B.Tech', 3, 'Chennai'),
(4, 'Sneha Patil', 'sneha.patil@gmail.com', '9876543213', 'MBA', 2, 'Pune'),
(5, 'Kiran Rao', 'kiran.rao@gmail.com', '9876543214', 'B.Sc', 0, 'Hyderabad'),
(6, 'Anjali Verma', 'anjali.verma@gmail.com', '9876543215', 'M.Tech', 4, 'Delhi'),
(7, 'Rohit Singh', 'rohit.singh@gmail.com', '9876543216', 'B.Tech', 2, 'Mumbai'),
(8, 'Pooja Nair', 'pooja.nair@gmail.com', '9876543217', 'MCA', 1, 'Kochi'),
(9, 'Arjun Mehta', 'arjun.mehta@gmail.com', '9876543218', 'B.Tech', 5, 'Ahmedabad'),
(10, 'Divya Iyer', 'divya.iyer@gmail.com', '9876543219', 'B.Com', 2, 'Chennai'),
(11, 'Nikhil Joshi', 'nikhil.joshi@gmail.com', '9876543220', 'B.Tech', 3, 'Hyderabad'),
(12, 'Meera Das', 'meera.das@gmail.com', '9876543221', 'M.Sc', 1, 'Bhubaneswar'),
(13, 'Vikram Patel', 'vikram.patel@gmail.com', '9876543222', 'B.Tech', 4, 'Surat'),
(14, 'Neha Gupta', 'neha.gupta@gmail.com', '9876543223', 'MBA', 2, 'Noida'),
(15, 'Suresh Babu', 'suresh.babu@gmail.com', '9876543224', 'BCA', 1, 'Vijayawada'),
(16, 'Lavanya Sri', 'lavanya.sri@gmail.com', '9876543225', 'B.Tech', 0, 'Visakhapatnam'),
(17, 'Harsha Vardhan', 'harsha.vardhan@gmail.com', '9876543226', 'M.Tech', 5, 'Warangal'),
(18, 'Keerthi Rani', 'keerthi.rani@gmail.com', '9876543227', 'B.Sc', 2, 'Hyderabad'),
(19, 'Manoj Kumar', 'manoj.kumar@gmail.com', '9876543228', 'B.Tech', 3, 'Bangalore'),
(20, 'Sai Kiran', 'sai.kiran@gmail.com', '9876543229', 'MCA', 1, 'Tirupati');

CREATE TABLE Companies
(
    company_id INT PRIMARY KEY,
    company_name VARCHAR(50),
    industry VARCHAR(50),
    location VARCHAR(30)
);
INSERT INTO Companies (company_id, company_name, industry, location) VALUES
(101, 'Infosys', 'IT Services', 'Hyderabad'),
(102, 'TCS', 'IT Services', 'Bangalore'),
(103, 'Wipro', 'IT Services', 'Chennai'),
(104, 'Accenture', 'Consulting', 'Pune'),
(105, 'Capgemini', 'IT Services', 'Hyderabad'),
(106, 'Cognizant', 'IT Services', 'Chennai'),
(107, 'HCL Technologies', 'IT Services', 'Noida'),
(108, 'Tech Mahindra', 'IT Services', 'Hyderabad'),
(109, 'IBM India', 'Technology', 'Bangalore'),
(110, 'Oracle India', 'Software', 'Hyderabad'),
(111, 'Deloitte', 'Consulting', 'Hyderabad'),
(112, 'EY', 'Consulting', 'Bangalore'),
(113, 'KPMG', 'Consulting', 'Mumbai'),
(114, 'PwC', 'Consulting', 'Kolkata'),
(115, 'Amazon', 'E-Commerce', 'Hyderabad'),
(116, 'Google', 'Technology', 'Bangalore'),
(117, 'Microsoft', 'Technology', 'Hyderabad'),
(118, 'Flipkart', 'E-Commerce', 'Bangalore'),
(119, 'Zoho', 'Software', 'Chennai'),
(120, 'Mindtree', 'IT Services', 'Bangalore');

CREATE TABLE Jobs
(
    job_id INT PRIMARY KEY,
    company_id INT,
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    location VARCHAR(30),
    FOREIGN KEY(company_id)
    REFERENCES Companies(company_id)
);
INSERT INTO Jobs
(job_id, company_id, job_title, salary, location)
VALUES
(201, 101, 'Python Developer', 600000.00, 'Hyderabad'),
(202, 102, 'Java Developer', 700000.00, 'Bangalore'),
(203, 103, 'Data Analyst', 550000.00, 'Chennai'),
(204, 104, 'SQL Developer', 650000.00, 'Pune'),
(205, 105, 'Web Developer', 500000.00, 'Hyderabad'),
(206, 106, 'Software Engineer', 750000.00, 'Chennai'),
(207, 107, 'Frontend Developer', 580000.00, 'Noida'),
(208, 108, 'Backend Developer', 720000.00, 'Hyderabad'),
(209, 109, 'Cloud Engineer', 850000.00, 'Bangalore'),
(210, 110, 'Database Administrator', 680000.00, 'Hyderabad'),
(211, 111, 'Business Analyst', 700000.00, 'Hyderabad'),
(212, 112, 'Data Engineer', 820000.00, 'Bangalore'),
(213, 113, 'DevOps Engineer', 900000.00, 'Mumbai'),
(214, 114, 'System Engineer', 620000.00, 'Kolkata'),
(215, 115, 'Machine Learning Engineer', 950000.00, 'Hyderabad'),
(216, 116, 'AI Engineer', 1000000.00, 'Bangalore'),
(217, 117, 'Cyber Security Analyst', 880000.00, 'Hyderabad'),
(218, 118, 'Full Stack Developer', 780000.00, 'Bangalore'),
(219, 119, 'QA Engineer', 560000.00, 'Chennai'),
(220, 120, 'Technical Support Engineer', 480000.00, 'Bangalore');

CREATE TABLE Skills
(
    skill_id INT PRIMARY KEY,
    skill_name VARCHAR(30)
);
INSERT INTO Skills
(skill_id, skill_name)
VALUES
(301, 'Python'),
(302, 'Java'),
(303, 'SQL'),
(304, 'HTML'),
(305, 'CSS'),
(306, 'JavaScript'),
(307, 'React'),
(308, 'Node.js'),
(309, 'C++'),
(310, 'C'),
(311, 'Machine Learning'),
(312, 'Data Analysis'),
(313, 'Power BI'),
(314, 'Tableau'),
(315, 'Excel'),
(316, 'AWS'),
(317, 'Azure'),
(318, 'Git'),
(319, 'Linux'),
(320, 'Communication');

CREATE TABLE Applications
(
    application_id INT PRIMARY KEY,
    candidate_id INT,
    job_id INT,
    application_date DATE,
    status VARCHAR(20),
    FOREIGN KEY(candidate_id)
    REFERENCES Candidates(candidate_id),
    FOREIGN KEY(job_id)
    REFERENCES Jobs(job_id)
);
INSERT INTO Applications
(application_id, candidate_id, job_id, application_date, status)
VALUES
(401, 1, 201, '2026-07-01', 'Selected'),
(402, 2, 202, '2026-07-02', 'Pending'),
(403, 3, 203, '2026-07-03', 'Rejected'),
(404, 4, 204, '2026-07-04', 'Selected'),
(405, 5, 205, '2026-07-05', 'Pending'),
(406, 6, 206, '2026-07-06', 'Selected'),
(407, 7, 207, '2026-07-07', 'Rejected'),
(408, 8, 208, '2026-07-08', 'Pending'),
(409, 9, 209, '2026-07-09', 'Selected'),
(410, 10, 210, '2026-07-10', 'Rejected'),
(411, 11, 211, '2026-07-11', 'Selected'),
(412, 12, 212, '2026-07-12', 'Pending'),
(413, 13, 213, '2026-07-13', 'Selected'),
(414, 14, 214, '2026-07-14', 'Rejected'),
(415, 15, 215, '2026-07-15', 'Pending'),
(416, 16, 216, '2026-07-16', 'Selected'),
(417, 17, 217, '2026-07-17', 'Pending'),
(418, 18, 218, '2026-07-18', 'Rejected'),
(419, 19, 219, '2026-07-19', 'Selected'),
(420, 20, 220, '2026-07-20', 'Pending');

CREATE TABLE Interviews
(
    interview_id INT PRIMARY KEY,
    application_id INT,
    interview_date DATE,
    result VARCHAR(20),
    FOREIGN KEY(application_id)
    REFERENCES Applications(application_id)
);
INSERT INTO Interviews
(interview_id, application_id, interview_date, result)
VALUES
(501, 401, '2026-07-10', 'Pass'),
(502, 402, '2026-07-11', 'Pending'),
(503, 403, '2026-07-12', 'Fail'),
(504, 404, '2026-07-13', 'Pass'),
(505, 405, '2026-07-14', 'Pending'),
(506, 406, '2026-07-15', 'Pass'),
(507, 407, '2026-07-16', 'Fail'),
(508, 408, '2026-07-17', 'Pending'),
(509, 409, '2026-07-18', 'Pass'),
(510, 410, '2026-07-19', 'Fail'),
(511, 411, '2026-07-20', 'Pass'),
(512, 412, '2026-07-21', 'Pending'),
(513, 413, '2026-07-22', 'Pass'),
(514, 414, '2026-07-23', 'Fail'),
(515, 415, '2026-07-24', 'Pending'),
(516, 416, '2026-07-25', 'Pass'),
(517, 417, '2026-07-26', 'Pending'),
(518, 418, '2026-07-27', 'Fail'),
(519, 419, '2026-07-28', 'Pass'),
(520, 420, '2026-07-29', 'Pending');