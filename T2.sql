INSERT INTO Author  VALUES ('J.K. Rowling'), ('George Orwell'), ('Jane Austen');
INSERT INTO Publisher VALUES ('Penguin'), ('Bloomsbury'), ('HarperCollins');
INSERT INTO Book VALUES
('1984', 2, 1, '9780451524935'),
('Harry Potter', 1, 2, '9780747532743'),
('Pride and Prejudice', 3, 3, '9780141439518');
INSERT INTO Member VALUES
('Alice', 'alice@example.com', '1234567890'),
('Bob', 'bob@example.com', NULL),
('Charlie', 'charlie@example.com', '9876543210');
INSERT INTO Loan VALUES
(1, 1, '2025-06-01', '2025-06-10'),
(2, 2, '2025-06-02', NULL),
(3, 3, '2025-06-03', '2025-06-13');
UPDATE Member SET Phone = '0000000000' WHERE Name = 'Bob';
DELETE FROM Loan WHERE Loan_ID = 1;
