SELECT m.Member_ID, m.Name, COUNT(br.BorrowID) AS TotalBorrowings
FROM Members m
LEFT JOIN Borrowing br ON m.Member_ID = br.MemberID
GROUP BY m.Member_ID, m.Name;

SELECT c.Category_Name, COUNT(bc.BookID) AS BookCount
FROM Categories c
LEFT JOIN BookCategories bc ON c.Category_ID = bc.CategoryID
GROUP BY c.Category_Name;

SELECT brw.Branch_Name, COUNT(br.BorrowID) AS OverdueCount
FROM Branches brw
LEFT JOIN Borrowing br ON brw.Branch_ID = br.BranchID AND br.Status = 'Overdue'
GROUP BY brw.Branch_Name;

SELECT YEAR(f.PaymentDate) AS Year, MONTH(f.PaymentDate) AS Month, SUM(f.PaidAmount) AS TotalCollected
FROM Fines f
WHERE f.Status = 'Paid'
GROUP BY YEAR(f.PaymentDate), MONTH(f.PaymentDate)
ORDER BY Year, Month;

SELECT m.Member_ID, m.Name, SUM(f.FineAmount) AS PendingFines
FROM Members m
JOIN Borrowing br ON m.Member_ID = br.MemberID
JOIN Fines f ON br.BorrowID = f.BorrowID
WHERE f.Status = 'Pending'
GROUP BY m.Member_ID, m.Name;

SELECT p.Name AS Publisher, SUM(b.Available_Copies) AS TotalAvailable
FROM Publishers p
JOIN Books b ON p.Publisher_ID = b.Publisher_ID
GROUP BY p.Name;

SELECT AVG(DATEDIFF(DAY, br.BorrowDate, ISNULL(br.ReturnDate, GETDATE()))) AS AvgDaysBorrowed
FROM Borrowing br;


SELECT m.Member_ID, m.Name, AVG(f.FineAmount) AS AvgFine
FROM Members m
JOIN Borrowing br ON m.Member_ID = br.MemberID
JOIN Fines f ON br.BorrowID = f.BorrowID
GROUP BY m.Member_ID, m.Name;

SELECT brw.Branch_Name, AVG(BorrowCount) AS AvgBorrowed
FROM (SELECT BranchID, COUNT(BorrowID) AS BorrowCount FROM Borrowing GROUP BY BranchID) As t
JOIN Branches brw ON t.BranchID = brw.Branch_ID
GROUP BY brw.Branch_Name;

SELECT MIN(Publication_Year) AS Oldest, MAX(Publication_Year) AS Newest
FROM Books;

SELECT TOP 1 m.Member_ID, m.Name, COUNT(b.BorrowID) AS TotalBorrowings
FROM Members m
JOIN Borrowing b ON m.Member_ID = b.MemberID
GROUP BY m.Member_ID, m.Name
ORDER BY TotalBorrowings DESC;  

SELECT TOP 1 m.Member_ID, m.Name, COUNT(b.BorrowID) AS TotalBorrowings
FROM Members m
LEFT JOIN Borrowing b ON m.Member_ID = b.MemberID
GROUP BY m.Member_ID, m.Name
ORDER BY TotalBorrowings ASC; 

SELECT MAX(FineAmount) AS HighestFine
FROM Fines;

SELECT c.Category_Name, COUNT(bc.BookID) AS TotalBooks
FROM Categories c
JOIN BookCategories bc ON c.Category_ID = bc.CategoryID
GROUP BY c.Category_Name
HAVING COUNT(bc.BookID) > 5;

SELECT m.Member_ID, m.Name, COUNT(b.BorrowID) AS BorrowCount
FROM Members m
JOIN Borrowing b ON m.Member_ID = b.MemberID
WHERE b.BorrowDate >= DATEADD(MONTH, -1, GETDATE())
GROUP BY m.Member_ID, m.Name
HAVING COUNT(b.BorrowID) > 3;

SELECT a.Author_ID, a.Name, COUNT(ba.BookID) AS TotalBooks
FROM Authors a
JOIN BookAuthors ba ON a.Author_ID = ba.AuthorID
GROUP BY a.Author_ID, a.Name
HAVING COUNT(ba.BookID) > 2;

SELECT br.Branch_Name, SUM(f.FineAmount) AS TotalPendingFines
FROM Branches br
JOIN Borrowing b ON br.Branch_ID = b.BranchID
JOIN Fines f ON b.BorrowID = f.BorrowID
WHERE f.Status = 'Pending'
GROUP BY br.Branch_Name
HAVING SUM(f.FineAmount) > 100;

SELECT br.Branch_Name, YEAR(b.BorrowDate) AS Year, MONTH(b.BorrowDate) AS Month, COUNT(b.BorrowID) AS TotalBorrowings
FROM Borrowing b
JOIN Branches br ON b.BranchID = br.Branch_ID
GROUP BY br.Branch_Name, YEAR(b.BorrowDate), MONTH(b.BorrowDate)
ORDER BY Year, Month;

SELECT m.Name, YEAR(f.PaymentDate) AS Year, SUM(f.PaidAmount) AS TotalCollected
FROM Fines f
JOIN Borrowing b ON f.BorrowID = b.BorrowID
JOIN Members m ON b.MemberID = m.Member_ID
WHERE f.Status = 'Paid'
GROUP BY m.Name, YEAR(f.PaymentDate)
ORDER BY Year;

SELECT b.Book_ID, b.Title, COUNT(br.BorrowID) AS TimesBorrowed
FROM Books b
JOIN Borrowing br ON b.Book_ID = br.BookID
GROUP BY b.Book_ID, b.Title
HAVING COUNT(br.BorrowID) > (
    SELECT AVG(BookBorrowed) 
    FROM (
        SELECT COUNT(BorrowID) AS BookBorrowed
        FROM Borrowing
        GROUP BY BookID
    ) AS t
);

SELECT m.Member_ID, m.Name, SUM(f.PaidAmount) AS TotalPaid 
FROM Members m
JOIN Borrowing b ON m.Member_ID = b.MemberID
JOIN Fines f ON b.BorrowID = f.BorrowID
WHERE f.Status = 'Paid'
GROUP BY m.Member_ID, m.Name
HAVING SUM(f.PaidAmount) > (
    SELECT AVG(PaidAmount)
    FROM Fines
    WHERE Status = 'Paid'
);









