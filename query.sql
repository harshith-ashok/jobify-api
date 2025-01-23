INSERT INTO  jobify.`jobs(hiree)` (Title, Description, Budget, Category, Duration, EmployerID)
SELECT 
    CONCAT('Job Title by ', Name) AS Title,         -- Generate a title based on the employer's name
    'Job description not provided yet.' AS Description, -- Default description
    'Negotiable' AS Budget,                        -- Default budget
    'General' AS Category,                         -- Default category
    30 AS Duration,                                -- Default duration (e.g., 30 days)
    UID AS EmployerID                              -- Use the employer's UID as the EmployeeID
FROM Users
WHERE User_Type = 'Employer';                      -- Only select employers


INSERT INTO Users (Name, Age, Phone_Number, Email, Gender, User_Type, Password, Username, Linktree, Profile_Picture_URL, About, Is_Verified)
VALUES
-- Employers
('Alice Johnson', 35, '9000000001', 'alice.johnson@example.com', 'Female', 'Employer', 'hashedpassword1', 'alicej', 'https://linktr.ee/alice', 'https://example.com/pic1.jpg', 'Experienced business owner.', TRUE),
('Bob Smith', 40, '9000000002', 'bob.smith@example.com', 'Male', 'Employer', 'hashedpassword2', 'bobsmith', 'https://linktr.ee/bob', 'https://example.com/pic2.jpg', 'Specialist in technology recruiting.', TRUE),
('Carol White', 45, '9000000003', 'carol.white@example.com', 'Female', 'Employer', 'hashedpassword3', 'carolw', 'https://linktr.ee/carol', 'https://example.com/pic3.jpg', 'HR professional with 20 years of experience.', TRUE),
('David Brown', 50, '9000000004', 'david.brown@example.com', 'Male', 'Employer', 'hashedpassword4', 'davidb', 'https://linktr.ee/david', 'https://example.com/pic4.jpg', 'Tech entrepreneur.', TRUE),
('Ella Green', 38, '9000000005', 'ella.green@example.com', 'Female', 'Employer', 'hashedpassword5', 'ellag', 'https://linktr.ee/ella', 'https://example.com/pic5.jpg', 'Marketing expert.', TRUE),
('Frank Black', 42, '9000000006', 'frank.black@example.com', 'Male', 'Employer', 'hashedpassword6', 'frankb', 'https://linktr.ee/frank', 'https://example.com/pic6.jpg', 'Financial consultant.', TRUE),
('Grace Hill', 48, '9000000007', 'grace.hill@example.com', 'Female', 'Employer', 'hashedpassword7', 'graceh', 'https://linktr.ee/grace', 'https://example.com/pic7.jpg', 'CEO and motivational speaker.', TRUE),
('Henry Adams', 44, '9000000008', 'henry.adams@example.com', 'Male', 'Employer', 'hashedpassword8', 'henrya', 'https://linktr.ee/henry', 'https://example.com/pic8.jpg', 'Startup founder.', TRUE),
('Isabella Moore', 39, '9000000009', 'isabella.moore@example.com', 'Female', 'Employer', 'hashedpassword9', 'isabellam', 'https://linktr.ee/isabella', 'https://example.com/pic9.jpg', 'Experienced in talent acquisition.', TRUE),
('Jack Wilson', 41, '9000000010', 'jack.wilson@example.com', 'Male', 'Employer', 'hashedpassword10', 'jackw', 'https://linktr.ee/jack', 'https://example.com/pic10.jpg', 'Logistics expert.', TRUE),

-- Employees
('Kate Evans', 28, '9000000011', 'kate.evans@example.com', 'Female', 'Employee', 'hashedpassword11', 'kateev', NULL, 'https://example.com/pic11.jpg', 'Graphic designer.', FALSE),
('Leo Martin', 32, '9000000012', 'leo.martin@example.com', 'Male', 'Employee', 'hashedpassword12', 'leom', NULL, 'https://example.com/pic12.jpg', 'Software developer.', FALSE),
('Mia Scott', 25, '9000000013', 'mia.scott@example.com', 'Female', 'Employee', 'hashedpassword13', 'mias', NULL, 'https://example.com/pic13.jpg', 'Content writer.', FALSE),
('Nathan Harris', 30, '9000000014', 'nathan.harris@example.com', 'Male', 'Employee', 'hashedpassword14', 'nathanh', NULL, 'https://example.com/pic14.jpg', 'Accountant.', FALSE),
('Olivia Young', 29, '9000000015', 'olivia.young@example.com', 'Female', 'Employee', 'hashedpassword15', 'oliviay', NULL, 'https://example.com/pic15.jpg', 'Project manager.', FALSE),
('Paul Lee', 27, '9000000016', 'paul.lee@example.com', 'Male', 'Employee', 'hashedpassword16', 'paull', NULL, 'https://example.com/pic16.jpg', 'Digital marketer.', FALSE),
('Quinn Baker', 33, '9000000017', 'quinn.baker@example.com', 'Other', 'Employee', 'hashedpassword17', 'quinnb', NULL, 'https://example.com/pic17.jpg', 'Web developer.', FALSE),
('Rose Carter', 31, '9000000018', 'rose.carter@example.com', 'Female', 'Employee', 'hashedpassword18', 'rosec', NULL, 'https://example.com/pic18.jpg', 'UI/UX designer.', FALSE),
('Sam Parker', 26, '9000000019', 'sam.parker@example.com', 'Male', 'Employee', 'hashedpassword19', 'samp', NULL, 'https://example.com/pic19.jpg', 'Data analyst.', FALSE),
('Tina Kelly', 34, '9000000020', 'tina.kelly@example.com', 'Female', 'Employee', 'hashedpassword20', 'tinak', NULL, 'https://example.com/pic20.jpg', 'HR assistant.', FALSE),
('Uma Clarke', 29, '9000000021', 'uma.clarke@example.com', 'Female', 'Employee', 'hashedpassword21', 'umac', NULL, 'https://example.com/pic21.jpg', 'Event planner.', FALSE),
('Victor James', 31, '9000000022', 'victor.james@example.com', 'Male', 'Employee', 'hashedpassword22', 'victorj', NULL, 'https://example.com/pic22.jpg', 'Sales manager.', FALSE),
('Wendy Adams', 25, '9000000023', 'wendy.adams@example.com', 'Female', 'Employee', 'hashedpassword23', 'wendya', NULL, 'https://example.com/pic23.jpg', 'SEO specialist.', FALSE),
('Xavier Brooks', 28, '9000000024', 'xavier.brooks@example.com', 'Male', 'Employee', 'hashedpassword24', 'xavierb', NULL, 'https://example.com/pic24.jpg', 'Machine learning engineer.', FALSE),
('Yara Foster', 33, '9000000025', 'yara.foster@example.com', 'Female', 'Employee', 'hashedpassword25', 'yaraf', NULL, 'https://example.com/pic25.jpg', 'Customer support specialist.', FALSE),
('Zane Mitchell', 27, '9000000026', 'zane.mitchell@example.com', 'Male', 'Employee', 'hashedpassword26', 'zanem', NULL, 'https://example.com/pic26.jpg', 'Backend developer.', FALSE),
('Aaron Cruz', 24, '9000000027', 'aaron.cruz@example.com', 'Male', 'Employee', 'hashedpassword27', 'aaronc', NULL, 'https://example.com/pic27.jpg', 'Junior accountant.', FALSE),
('Bella Lane', 29, '9000000028', 'bella.lane@example.com', 'Female', 'Employee', 'hashedpassword28', 'bellal', NULL, 'https://example.com/pic28.jpg', 'Marketing associate.', FALSE),
('Caleb Reed', 31, '9000000029', 'caleb.reed@example.com', 'Male', 'Employee', 'hashedpassword29', 'calebr', NULL, 'https://example.com/pic29.jpg', 'Operations analyst.', FALSE),
('Diana West', 26, '9000000030', 'diana.west@example.com', 'Female', 'Employee', 'hashedpassword30', 'dianaw', NULL, 'https://example.com/pic30.jpg', 'Copywriter.', FALSE),
('Ethan Bennett', 30, '9000000031', 'ethan.bennett@example.com', 'Male', 'Employee', 'hashedpassword31', 'ethanb', NULL, 'https://example.com/pic31.jpg', 'Systems engineer.', FALSE),
('Fiona Hayes', 34, '9000000032', 'fiona.hayes@example.com', 'Female', 'Employee', 'hashedpassword32', 'fionah', NULL, 'https://example.com/pic32.jpg', 'Business analyst.', FALSE),
('Gavin Diaz', 28, '9000000033', 'gavin.diaz@example.com', 'Male', 'Employee', 'hashedpassword33', 'gavind', NULL, 'https://example.com/pic33.jpg', 'Product manager.', FALSE),
('Holly King', 27, '9000000034', 'holly.king@example.com', 'Female', 'Employee', 'hashedpassword34', 'hollyk', NULL, 'https://example.com/pic34.jpg', 'Technical writer.', FALSE),
('Ian Moore', 29, '9000000035', 'ian.moore@example.com', 'Male', 'Employee', 'hashedpassword35', 'ianm', NULL, 'https://example.com/pic35.jpg', 'Network administrator.', FALSE),
('Jenna Fox', 30, '9000000036', 'jenna.fox@example.com', 'Female', 'Employee', 'hashedpassword36', 'jennaf', NULL, 'https://example.com/pic36.jpg', 'Cloud engineer.', FALSE),
('Kyle Wright', 33, '9000000037', 'kyle.wright@example.com', 'Male', 'Employee', 'hashedpassword37', 'kylew', NULL, 'https://example.com/pic37.jpg', 'Cloud engineer.', FALSE),
('Liam Carter', 26, '9000000038', 'liam.carter@example.com', 'Male', 'Employee', 'hashedpassword38', 'liamc', NULL, 'https://example.com/pic38.jpg', 'Data scientist.', FALSE);

CREATE TABLE Users (
    UID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Age INT CHECK (Age > 0), 
    Phone_Number VARCHAR(15) UNIQUE NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    User_Type VARCHAR(20) NOT NULL,
    Password VARCHAR(255) NOT NULL, -- Use hashing for security
    Username VARCHAR(50) UNIQUE NOT NULL,
    Linktree VARCHAR(255), -- For storing a linktree URL
    Profile_Picture_URL VARCHAR(255), -- For storing profile picture URLs
    About TEXT, -- For a detailed description about the person
    Is_Verified BOOLEAN DEFAULT FALSE -- Indicates if the user is verified
);


CREATE TABLE Proposals (
    ProposalID INT AUTO_INCREMENT PRIMARY KEY,  -- Unique Proposal ID
    JobID INT NOT NULL,                         -- Foreign Key referencing the Job ID (JID) from Jobs table
    EmployerID INT NOT NULL,                    -- Foreign Key referencing the Employer's UID from Users table
    UID INT NOT NULL,                           -- Foreign Key referencing the User ID (UID) from Users table
    Status ENUM('Accepted', 'Pending', 'Denied') DEFAULT 'Pending', -- Proposal Status
);



ALTER TABLE jobify.proposals ADD FOREIGN KEY(JID) REFERENCES jobify.jobs(JID);

CREATE TABLE Projects (
    UID INT NOT NULL,                        -- User ID, foreign key linking to Users table
    PJID INT AUTO_INCREMENT PRIMARY KEY,     -- Project ID, unique primary key
    Description TEXT,                         -- Description of the project
    Media VARCHAR(255),                       -- URL to media (such as images or videos)
    Tags VARCHAR(255),                        -- Tags related to the project (can be a comma-separated string)
    ExtraLinks VARCHAR(255),                  -- Extra URLs or links related to the project
    Likes INT DEFAULT 0,                      -- Count of likes for the project
    Referrals INT DEFAULT 0,                  -- Count of referrals for the project
    FOREIGN KEY (UID) REFERENCES jobify.users(UID) ON DELETE CASCADE -- Foreign key to Users table
);

-- Insert two projects for each employee (total of 56 entries)
INSERT INTO jobify.projects (UID, PJID, Description, Media, Tags, ExtraLinks, Likes, Referrals)
VALUES
(51, 1001, 'Project description for employee 51 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(51, 1002, 'Project description for employee 51 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(52, 1003, 'Project description for employee 52 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(52, 1004, 'Project description for employee 52 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(53, 1005, 'Project description for employee 53 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(53, 1006, 'Project description for employee 53 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(54, 1007, 'Project description for employee 54 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(54, 1008, 'Project description for employee 54 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(55, 1009, 'Project description for employee 55 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(55, 1010, 'Project description for employee 55 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(56, 1011, 'Project description for employee 56 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(56, 1012, 'Project description for employee 56 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(57, 1013, 'Project description for employee 57 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(57, 1014, 'Project description for employee 57 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(58, 1015, 'Project description for employee 58 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(58, 1016, 'Project description for employee 58 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(59, 1017, 'Project description for employee 59 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(59, 1018, 'Project description for employee 59 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(60, 1019, 'Project description for employee 60 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(60, 1020, 'Project description for employee 60 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(61, 1021, 'Project description for employee 61 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(61, 1022, 'Project description for employee 61 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(62, 1023, 'Project description for employee 62 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(62, 1024, 'Project description for employee 62 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(63, 1025, 'Project description for employee 63 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(63, 1026, 'Project description for employee 63 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(64, 1027, 'Project description for employee 64 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(64, 1028, 'Project description for employee 64 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(65, 1029, 'Project description for employee 65 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(65, 1030, 'Project description for employee 65 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(66, 1031, 'Project description for employee 66 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(66, 1032, 'Project description for employee 66 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(67, 1033, 'Project description for employee 67 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(67, 1034, 'Project description for employee 67 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(68, 1035, 'Project description for employee 68 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(68, 1036, 'Project description for employee 68 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(69, 1037, 'Project description for employee 69 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(69, 1038, 'Project description for employee 69 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(70, 1039, 'Project description for employee 70 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(70, 1040, 'Project description for employee 70 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(71, 1041, 'Project description for employee 71 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(71, 1042, 'Project description for employee 71 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(72, 1043, 'Project description for employee 72 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(72, 1044, 'Project description for employee 72 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(73, 1045, 'Project description for employee 73 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(73, 1046, 'Project description for employee 73 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(74, 1047, 'Project description for employee 74 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(74, 1048, 'Project description for employee 74 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(75, 1049, 'Project description for employee 75 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(75, 1050, 'Project description for employee 75 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(76, 1051, 'Project description for employee 76 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(76, 1052, 'Project description for employee 76 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(77, 1053, 'Project description for employee 77 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(77, 1054, 'Project description for employee 77 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0),
(78, 1055, 'Project description for employee 78 - 1', 'http://example.com/media1.jpg', 'project, employee', 'http://example.com/extra_link1', 0, 0),
(78, 1056, 'Project description for employee 78 - 2', 'http://example.com/media2.jpg', 'project, employee', 'http://example.com/extra_link2', 0, 0);
