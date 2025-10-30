SELECT Book_ID, Title, Publication_Year
FROM Books
WHERE Publication_Year > 2020;


SELECT Member_ID, Name, Expiry_Date
FROM Members
WHERE Expiry_Date BETWEEN GETDATE() AND DATEADD(DAY, 30, GETDATE());

SELECT BorrowID, MemberID, BookID, DueDate
FROM Borrowing
WHERE ReturnDate IS NULL AND DueDate < GETDATE();

SELECT b.Book_ID, b.Title
FROM Books b
LEFT JOIN Borrowing br ON b.Book_ID = br.BookID
WHERE br.BookID IS NULL;

SELECT m.Member_ID, m.Name, f.FineAmount, f.Status
FROM Fines f
JOIN Borrowing br ON f.BorrowID = br.BorrowID
JOIN Members m ON br.MemberID = m.Member_ID
WHERE f.Status = 'Pending' AND f.FineAmount > 10;

SELECT b.Book_ID, b.Title, c.Category_Name
FROM Books b
JOIN BookCategories bc ON b.Book_ID = bc.BookID
JOIN Categories c ON bc.CategoryID = c.Category_ID
WHERE c.Category_Name = 'Fiction';

SELECT Book_ID, Title, Available_Copies
FROM Books
WHERE Available_Copies < 2;

SELECT Author_ID, Name, Nationality
FROM Authors
WHERE Nationality IN ('USA', 'UK');

SELECT b.Book_ID, b.Title, p.Name AS Publishers
FROM Books b
JOIN Publishers p ON b.Publisher_ID = p.Publisher_ID
WHERE p.Name = 'Penguin';

SELECT BorrowID, MemberID, BookID, BorrowDate
FROM Borrowing
WHERE BorrowDate BETWEEN DATEADD(MONTH, -1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
                     AND DATEADD(DAY, -1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1));







