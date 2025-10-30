SELECT br.BorrowID, m.Name AS MemberName, b.Title 
FROM Borrowing br
INNER JOIN Members m ON br.MemberID = m.Member_ID
INNER JOIN Books b ON br.BookID = b.Book_ID;

SELECT b.Book_ID, b.Title, a.Name AS AuthorName
FROM Books b
INNER JOIN BookAuthors ba ON b.Book_ID = ba.BookID
INNER JOIN Authors a ON ba.AuthorID = a.Author_ID
ORDER BY b.Book_ID;


SELECT br.BorrowID, b.Title AS BookTitle, m.Name AS MemberName, brw.Branch_Name, br.Status
FROM Borrowing br
INNER JOIN Books b ON br.BookID = b.Book_ID
INNER JOIN Members m ON br.MemberID = m.Member_ID
INNER JOIN Branches brw ON br.BranchID = brw.Branch_ID
WHERE br.Status = 'Borrowed';

SELECT b.Book_ID, b.Title, br.Status AS BorrowStatus
FROM Books b
LEFT JOIN Borrowing br ON b.Book_ID = br.BookID AND br.Status = 'Borrowed';

SELECT c.Category_ID, c.Category_Name, COUNT(bc.BookID) AS BookCount
FROM Categories c
LEFT JOIN BookCategories bc ON c.Category_ID = bc.CategoryID
GROUP BY c.Category_ID, c.Category_Name
ORDER BY c.Category_ID;
