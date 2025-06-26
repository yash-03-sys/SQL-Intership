
-- 1. Select all columns from Book
SELECT * FROM Book;

-- 2. Select specific columns from Member
SELECT Name, Email FROM Member;

-- 3. Filter Members whose name starts with 'A'
SELECT * FROM Member WHERE Name LIKE 'A%';

-- 4. Books published by Publisher_ID 2 or 3
SELECT * FROM Book WHERE Publisher_ID IN (2, 3);

-- 5. Books with titles containing the word 'Harry'
SELECT * FROM Book WHERE Title LIKE '%Harry%';

-- 6. Members whose phone number is NULL
SELECT * FROM Member WHERE Phone IS NULL;

-- 7. Loans between specific dates
SELECT * FROM Loan WHERE Loan_Date BETWEEN '2025-06-01' AND '2025-06-10';

-- 8. Sort books by Title in ascending order
SELECT * FROM Book ORDER BY Title ASC;

-- 9. Sort Members by Name in descending order
SELECT * FROM Member ORDER BY Name DESC;

-- 10. Limit results to top 2 members
SELECT * FROM Member LIMIT 2;

-- 11. Use alias for Book Title
SELECT Title AS Book_Title FROM Book;

-- 12. Select distinct publisher IDs from Book table
SELECT DISTINCT Publisher_ID FROM Book;
