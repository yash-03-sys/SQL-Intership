
-- Insert sample authors
INSERT INTO Author (Name) VALUES ('J.K. Rowling'), ('George Orwell'), ('Jane Austen');

-- Insert sample publishers
INSERT INTO Publisher (Name) VALUES ('Penguin'), ('Bloomsbury'), ('HarperCollins');

-- Insert sample books
INSERT INTO Book (Title, Author_ID, Publisher_ID, ISBN) VALUES
('1984', 2, 1, '9780451524935'),
('Harry Potter', 1, 2, '9780747532743'),
('Pride and Prejudice', 3, 3, '9780141439518');

-- Insert sample members
INSERT INTO Member (Name, Email, Phone) VALUES
('Alice', 'alice@example.com', '1234567890'),
('Bob', 'bob@example.com', NULL), -- NULL phone
('Charlie', 'charlie@example.com', '9876543210');

-- Insert sample loans
INSERT INTO Loan (Book_ID, Member_ID, Loan_Date, Return_Date) VALUES
(1, 1, '2025-06-01', '2025-06-10'),
(2, 2, '2025-06-02', NULL), -- Not yet returned
(3, 3, '2025-06-03', '2025-06-13');

-- Update example
UPDATE Member SET Phone = '0000000000' WHERE Name = 'Bob';

-- Delete example
DELETE FROM Loan WHERE Loan_ID = 1;
