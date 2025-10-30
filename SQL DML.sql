INSERT INTO Branches (Branch_Name, Address, Phone, Manager_Name, Opening_Date) VALUES
('Central', 'Main St 12', '9001001', 'Amal', '2018-01-10'),
('East', 'East Rd 5', '9001002', 'Bilal', '2019-03-15'),
('West', 'West Ave 22', '9001003', 'Sara', '2020-05-25'),
('North', 'North Sq 8', '9001004', 'Hassan', '2021-02-18'),
('South', 'South Blvd 9', '9001005', 'Nora', '2022-07-07');

INSERT INTO Members (Name, Email, Phone, Address, Membership_Type, Status, Join_Date, Expiry_Date)
VALUES
('Ali', 'ali1@mail.com', '9000001', 'City A', 'Standard', 'Active', '2024-01-10', '2025-01-10'),
('Mina', 'mina@mail.com', '9000002', 'City B', 'Premium', 'Active', '2023-11-15', '2025-11-15'),
('Sara', 'sara@mail.com', '9000003', 'City C', 'Standard', 'Expired', '2022-08-05', '2023-08-05'),
('Hassan', 'hassan@mail.com', '9000004', 'City D', 'Premium', 'Active', '2024-05-12', '2025-05-12'),
('Omar', 'omar@mail.com', '9000005', 'City E', 'Standard', 'Active', '2023-03-19', '2025-03-19'),
('Layla', 'layla@mail.com', '9000006', 'City F', 'Premium', 'Active', '2023-06-01', '2025-06-01'),
('Zara', 'zara@mail.com', '9000007', 'City G', 'Standard', 'Expired', '2022-10-01', '2023-10-01'),
('Yusuf', 'yusuf@mail.com', '9000008', 'City H', 'Standard', 'Active', '2024-02-17', '2025-02-17'),
('Noor', 'noor@mail.com', '9000009', 'City I', 'Premium', 'Active', '2023-09-09', '2025-09-09'),
('Fahad', 'fahad@mail.com', '9000010', 'City J', 'Standard', 'Active', '2024-04-04', '2025-04-04'),
('Huda', 'huda@mail.com', '9000011', 'City K', 'Premium', 'Active', '2023-05-10', '2025-05-10'),
('Sami', 'sami@mail.com', '9000012', 'City L', 'Standard', 'Active', '2023-12-01', '2025-12-01'),
('Reem', 'reem@mail.com', '9000013', 'City M', 'Standard', 'Expired', '2022-03-14', '2023-03-14'),
('Nabil', 'nabil@mail.com', '9000014', 'City N', 'Premium', 'Active', '2024-06-20', '2025-06-20'),
('Dina', 'dina@mail.com', '9000015', 'City O', 'Standard', 'Active', '2024-08-25', '2025-08-25'),
('Rami', 'rami@mail.com', '9000016', 'City P', 'Premium', 'Expired', '2022-05-05', '2023-05-05'),
('Aya', 'aya@mail.com', '9000017', 'City Q', 'Standard', 'Active', '2023-11-11', '2025-11-11'),
('Tariq', 'tariq@mail.com', '9000018', 'City R', 'Premium', 'Active', '2023-10-10', '2025-10-10'),
('Mona', 'mona@mail.com', '9000019', 'City S', 'Standard', 'Active', '2024-07-07', '2025-07-07'),
('Khalid', 'khalid@mail.com', '9000020', 'City T', 'Premium', 'Active', '2024-01-01', '2025-01-01');


INSERT INTO Authors (Name, Biography, Birth_Year, Nationality) VALUES
('John Smith', 'Sci-fi author', '1970-01-01', 'USA'),
('Jane Doe', 'Fiction writer', '1980-03-03', 'UK'),
('Ali Khan', 'History author', '1965-05-05', 'PK'),
('Maria Lopez', 'Romance novels', '1985-02-02', 'ES'),
('Tom Lee', 'Technology writer', '1990-06-06', 'KR'),
('Lina Chen', 'Children’s books', '1978-04-04', 'CN'),
('Carlos Rivera', 'Thriller author', '1982-12-12', 'MX'),
('Nora Davis', 'Mystery novelist', '1975-09-09', 'CA'),
('Hassan Omar', 'Poet and educator', '1968-07-07', 'OM'),
('Fatima Zahra', 'Self-help books', '1988-11-11', 'MA');



INSERT INTO Publishers (Name, Country, Contact_Email, Established_Year) VALUES
('Pearson', 'UK', 'contact@pearson.com', 1980),
('Penguin', 'USA', 'info@penguin.com', 1975),
('Oxford', 'UK', 'hello@oxford.com', 1965),
('AlManhal', 'UAE', 'admin@almanhal.com', 2000),
('Springer', 'Germany', 'support@springer.com', 1995);


INSERT INTO Categories (Category_Name, Description) VALUES
('Fiction', 'Fictional stories'),
('Science', 'Scientific and academic books'),
('History', 'Historical events'),
('Technology', 'Tech and IT books'),
('Romance', 'Love stories'),
('Children', 'Books for kids'),
('Mystery', 'Suspense and detective stories'),
('Poetry', 'Poems and verses');

INSERT INTO Books (ISBN, Title, Edition, Publication_Year, Total_Copies, Available_Copies, Shelf_Location, Publisher_ID, Rating)
VALUES
('ISBN001', 'The Lost World', '1st', 2019, 5, 3, 'A1', 1, 4),
('ISBN002', 'Deep Space', '2nd', 2020, 4, 1, 'A2', 2, 5),
('ISBN003', 'Love Forever', '1st', 2021, 6, 4, 'B1', 3, 3),
('ISBN004', 'Modern Tech', '3rd', 2022, 8, 6, 'C2', 4, 5),
('ISBN005', 'History of Oman', '1st', 2018, 3, 1, 'D1', 5, 4),
('ISBN006', 'AI Revolution', '2nd', 2023, 7, 7, 'C3', 1, 5),
('ISBN007', 'Mystery Night', '1st', 2019, 5, 2, 'E1', 2, 4),
('ISBN008', 'Kids World', '1st', 2020, 9, 9, 'F2', 3, 5),
('ISBN009', 'Dream Poems', '1st', 2021, 4, 2, 'G1', 4, 4),
('ISBN010', 'Desert Tales', '2nd', 2022, 5, 5, 'H1', 5, 3),
('ISBN011', 'Future Now', '1st', 2023, 6, 4, 'C4', 1, 5),
('ISBN012', 'Past Legends', '2nd', 2019, 3, 1, 'D2', 2, 4),
('ISBN013', 'Quantum Life', '1st', 2020, 5, 3, 'C5', 3, 5),
('ISBN014', 'Heart Strings', '3rd', 2021, 6, 6, 'B2', 4, 3),
('ISBN015', 'Underworld', '1st', 2018, 4, 2, 'E2', 5, 5),
('ISBN016', 'Smart Cities', '1st', 2023, 8, 5, 'C6', 1, 5),
('ISBN017', 'Data Science 101', '2nd', 2020, 7, 6, 'C7', 2, 4),
('ISBN018', 'Omani Poems', '1st', 2019, 3, 3, 'G2', 3, 5),
('ISBN019', 'Global Wars', '2nd', 2021, 6, 3, 'D3', 4, 4),
('ISBN020', 'AI Ethics', '1st', 2023, 5, 5, 'C8', 5, 5),
('ISBN021', 'Love Island', '1st', 2020, 4, 2, 'B3', 1, 3),
('ISBN022', 'The Mystery Code', '1st', 2021, 7, 3, 'E3', 2, 5),
('ISBN023', 'Green Planet', '1st', 2022, 5, 4, 'C9', 3, 4),
('ISBN024', 'Digital Minds', '1st', 2023, 8, 8, 'C10', 4, 5),
('ISBN025', 'Kids Fun', '2nd', 2020, 6, 6, 'F3', 5, 5),
('ISBN026', 'Romantic Hearts', '1st', 2021, 5, 3, 'B4', 1, 4),
('ISBN027', 'Thrill Ride', '1st', 2022, 7, 6, 'E4', 2, 5),
('ISBN028', 'Science Today', '2nd', 2023, 6, 6, 'C11', 3, 5),
('ISBN029', 'Arabian Nights', '1st', 2018, 4, 1, 'H2', 4, 4),
('ISBN030', 'World History', '1st', 2020, 8, 7, 'D4', 5, 5);



CREATE TABLE BookAuthors (
BookID INT,
AuthorID INT,
PRIMARY KEY (BookID, AuthorID),
FOREIGN KEY (BookID) REFERENCES Books(Book_ID) ON DELETE CASCADE,
FOREIGN KEY (AuthorID) REFERENCES Authors(Author_ID) ON DELETE CASCADE
);

INSERT INTO BookAuthors VALUES
(1,1),(1,2),(2,3),(3,4),(4,5),(5,9),(6,5),(7,8),(8,6),(9,10),
(10,9),(11,5),(12,3),(13,2),(14,4),(15,7),(16,5),(17,5),(18,9),(19,3),(20,5);



CREATE TABLE BookCategories (
BookID INT,
CategoryID INT,
PRIMARY KEY (BookID, CategoryID),
FOREIGN KEY (BookID) REFERENCES Books(Book_ID) ON DELETE CASCADE,
FOREIGN KEY (CategoryID) REFERENCES Categories(Category_ID) ON DELETE CASCADE
);

INSERT INTO BookCategories VALUES
(1,2),(2,2),(3,5),(4,4),(5,3),(6,4),(7,7),(8,6),(9,8),(10,1),
(11,4),(12,3),(13,2),(14,5),(15,7),(16,4),(17,4),(18,8),(19,3),(20,4);


INSERT INTO Borrowing (MemberID, BookID, BranchID, BorrowDate, DueDate, ReturnDate, Status) VALUES
(1,1,1,'2025-01-10','2025-01-25',NULL,'Overdue'),
(2,2,2,'2025-01-15','2025-01-30','2025-01-28','Returned'),
(3,3,3,'2025-02-01','2025-02-16',NULL,'Borrowed'),
(4,4,4,'2025-02-10','2025-02-25','2025-02-20','Returned'),
(5,5,5,'2025-03-05','2025-03-20',NULL,'Overdue'),
(6,6,1,'2025-03-10','2025-03-25',NULL,'Borrowed'),
(7,7,2,'2025-04-01','2025-04-16','2025-04-15','Returned'),
(8,8,3,'2025-04-05','2025-04-20',NULL,'Borrowed'),
(9,9,4,'2025-05-01','2025-05-16','2025-05-14','Returned'),
(10,10,5,'2025-05-10','2025-05-25',NULL,'Borrowed'),
(11,11,1,'2025-06-01','2025-06-16',NULL,'Overdue'),
(12,12,2,'2025-06-10','2025-06-25','2025-06-23','Returned'),
(13,13,3,'2025-07-01','2025-07-16',NULL,'Borrowed'),
(14,14,4,'2025-07-10','2025-07-25','2025-07-20','Returned'),
(15,15,5,'2025-08-01','2025-08-16',NULL,'Overdue'),
(16,16,1,'2025-08-10','2025-08-25',NULL,'Borrowed'),
(17,17,2,'2025-09-01','2025-09-16',NULL,'Borrowed'),
(18,18,3,'2025-09-05','2025-09-20','2025-09-18','Returned'),
(19,19,4,'2025-09-10','2025-09-25',NULL,'Borrowed'),
(20,20,5,'2025-09-15','2025-09-30','2025-09-29','Returned'),
(1,21,1,'2025-10-01','2025-10-16',NULL,'Borrowed'),
(2,22,2,'2025-10-05','2025-10-20',NULL,'Borrowed'),
(3,23,3,'2025-10-10','2025-10-25',NULL,'Borrowed'),
(4,24,4,'2025-10-15','2025-10-30',NULL,'Borrowed'),
(5,25,5,'2025-10-20','2025-11-04',NULL,'Borrowed');


INSERT INTO Fines (BorrowID, FineAmount, PaidAmount, PaymentDate, Status) VALUES
(1,5.00,0,NULL,'Pending'),
(5,10.00,0,NULL,'Pending'),
(11,7.50,7.50,'2025-07-01','Paid'),
(15,12.00,0,NULL,'Pending'),
(6,3.00,3.00,'2025-03-28','Paid'),
(10,5.00,5.00,'2025-05-30','Paid'),
(3,4.00,0,NULL,'Pending'),
(20,2.00,2.00,'2025-10-01','Paid');


INSERT INTO Reservations (MemberID, BookID, ReservationDate, ExpiryDate, Status) VALUES
(1,5,'2025-01-01','2025-01-15','Expired'),
(2,6,'2025-02-01','2025-02-15','Fulfilled'),
(3,7,'2025-03-01','2025-03-15','Active'),
(4,8,'2025-04-01','2025-04-15','Active'),
(5,9,'2025-05-01','2025-05-15','Expired');


UPDATE Members
SET Membership_Type = 'Premium'
WHERE Name = 'Ali';

UPDATE Borrowing
SET ReturnDate = GETDATE(), Status = 'Returned'
WHERE BorrowID = 3;

UPDATE Books
SET Available_Copies = Available_Copies + 1
WHERE Book_ID = (SELECT BookID FROM Borrowing WHERE BorrowID = 3);


UPDATE Fines
SET Status = 'Paid',
    PaidAmount = FineAmount,
    PaymentDate = GETDATE()
WHERE FineID = 1;

DELETE FROM Reservations
WHERE Status = 'Expired';

DELETE FROM Members
WHERE Member_ID = 1;


