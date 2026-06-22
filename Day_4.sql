
-- ACCOUNTS TABLE


DROP TABLE IF EXISTS Accounts;

CREATE TABLE Accounts (
    acc_no INT PRIMARY KEY,
    name VARCHAR(50),
    balance NUMERIC(10,2)
);

INSERT INTO Accounts VALUES
(101, 'Amit', 5000.00),
(102, 'Neha', 7000.00);

SELECT * FROM Accounts;


-- COMMIT EXAMPLE


BEGIN;

UPDATE Accounts
SET balance = balance - 1000
WHERE acc_no = 101;

UPDATE Accounts
SET balance = balance + 1000
WHERE acc_no = 102;

COMMIT;

SELECT * FROM Accounts;


-- ROLLBACK EXAMPLE


BEGIN;

UPDATE Accounts
SET balance = balance - 2000
WHERE acc_no = 101;

SELECT * FROM Accounts
ORDER BY balance ASC;

ROLLBACK;

SELECT * FROM Accounts
ORDER BY balance ASC;


-- SAVEPOINT EXAMPLE


BEGIN;

UPDATE Accounts
SET balance = balance - 1000
WHERE acc_no = 101;

SAVEPOINT sp1;

UPDATE Accounts
SET balance = balance + 1000
WHERE acc_no = 102;

SELECT * FROM Accounts;

ROLLBACK TO SAVEPOINT sp1;

SELECT * FROM Accounts;

RELEASE SAVEPOINT sp1;

COMMIT;

SELECT * FROM Accounts;


-- STUDENTS TABLE


DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Amit', 80),
(2, 'Neha', 90);

SELECT * FROM Students;


-- COMMIT EXAMPLE


BEGIN;

UPDATE Students
SET marks = 85
WHERE id = 1;

COMMIT;

SELECT * FROM Students;


-- ROLLBACK EXAMPLE


BEGIN;

UPDATE Students
SET marks = 50
WHERE id = 2;

ROLLBACK;

SELECT * FROM Students;


-- SAVEPOINT EXAMPLE


BEGIN;

UPDATE Students
SET marks = 95
WHERE id = 1;

SAVEPOINT sp1;

UPDATE Students
SET marks = 60
WHERE id = 2;

ROLLBACK TO SAVEPOINT sp1;

RELEASE SAVEPOINT sp1;

COMMIT;

SELECT * FROM Students;