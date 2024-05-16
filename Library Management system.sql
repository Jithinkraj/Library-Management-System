## Creation of 'Library' Database.

CREATE DATABASE Library;

USE Library;

## Creation of 'Branch' Table.

CREATE TABLE Branch(
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(30),
    Contact_no INT );
    
DESC Branch;

## Creation of 'Employee' Table.

CREATE TABLE Employee(
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(30),
    Position VARCHAR(30),
    Salary DECIMAL(10,2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no) );
    
DESC Employee;

## Creation of 'Books' Table.

CREATE TABLE Books(
    ISBN INT(15) PRIMARY KEY,
    Book_title VARCHAR(50),
    Category VARCHAR(30),
    Rental_Price DECIMAL(10,2),
    Status ENUM('Yes','No'),
    Author VARCHAR(30),
    Publisher VARCHAR(30) );
    
DESC Books;

## Creation of 'Customer' Table.

CREATE TABLE Customer(
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(30),
    Customer_address VARCHAR(50),
    Reg_date DATE );
    
DESC Customer;

## Creation of 'IssueStatus' Table

CREATE TABLE IssueStatus(
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(50),
    Issue_date DATE,
    Isbn_book INT(15),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN) );

DESC IssueStatus;

## Creation of 'ReturnStatus' Table

CREATE TABLE ReturnStatus(
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(50),
    Return_date DATE,
    Isbn_book2 INT(15),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN) );
    
DESC ReturnStatus;

## Insertion of data into the table'Branch'.

INSERT INTO Branch VALUES
	(101,201,'Neeleshwaram,Kasaragod',986745123),
    (102,202,'Thalassery,Kannur',854775892),
    (103,203,'Kalpetta,Wayanad',720546182),
    (104,204,'Mavoor,Kozhikode',653248791),
    (105,205,'Manjeri,Malappuram',753248759),
    (106,206,'Ottappalam,Palakkad',857945750),
    (107,207,'Chalakkudi,Thrissur',949572461),
    (108,208,'Kochi,Ernakulam',854766778),
    (109,209,'Kattappana,Idukki',623500050),
    (110,210,'Pala,Kottayam',894785623);
    
## Display of 'Branch' Table
    
SELECT * FROM Branch;

## Insertion of data into the table'Employee'.

INSERT INTO Employee VALUES
	(301,'Ajith','Librarian',50000,102),
    (302,'Anila','Assistant Librarian',40000,102),
    (303,'Rahul','Clerk',30000,103),
    (304,'Jithin','IT Specialist',55000,102),
    (305,'Babu','Security Guard',28000,104),
    (306,'Shafeeq','Cataloger',35000,102),
    (307,'Sindhu','Janitor',25000,107),
    (308,'Rasheed','Reader Services',35000,102),
    (309,'Sneha','Youth Librarian',48000,102),
    (310,'Rohith','Librarian',50000,110);
    
## Display of 'Employee' Table

SELECT * FROM Employee;

## Insertion of data into the table'Books'.

INSERT INTO Books VALUES
	(978123486,'The Great Library Adventure','Fiction',20,'Yes','Jane Author','BookHouse Publishers'),
    (978988554,'Mystery at Midnight Manor','Mystery',20,'Yes','Sam Sleuth','Enigma Press'),
	(978543210,'Science Explorations','Science',30,'Yes', 'Lisa Scientist','Discovery Books'),
    (978135792,'Historical Chronicles','History',28,'Yes','Henry Historian','Past Times Publishing'),
    (978135124,'Poetry Anthology','Poetry',24,'Yes','Sam Sonnet','Verse Versatility'),
	(978123456,'Fantasy Quest II','Fantasy',20,'No','Ella Enchantress','Mythical'),
    (978987636,'Cooking Adventures','Cookbook',20,'Yes','Chef Culinary','Tasty Recipes'),
	(978543211,'Historical Journeys','History',28,'Yes','Lucy Historian','Past Chronicles'),
    (978981554,'Enigma Enigmas','Puzzles',20,'No','Riddle Solver','Brain Teasers Publishing'),
    (978112233,'Classic Literature Classics','Literature',24,'Yes','William Wordsmith','Timeless Editions');
    
## Display of 'Books' Table
    
SELECT * FROM Books;

## Insertion of data into the table'Customer'.

INSERT INTO Customer VALUES
	(401,'Alex','Gandhinagar,Iritty','2023-05-10'),
    (402,'Sumesh','Pattery,Mavoor','2022-06-24'),
    (403,'Roshan','Maloor,Kannur','2020-08-30'),
    (404,'Midhun','Thaliparamba,Payyannur','2021-01-26'),
    (405,'Jishna','Kariyad,Mahe','2022-02-11'),
    (406,'Rahul','Palavayal,Cherupuzha','2020-06-06'),
    (407,'Hafiz','Kuttyadi,Perambra','2021-11-14'),
    (408,'Vipin','Narikkuni,Balussery','2020-12-20'),
    (409,'Navas','Payyoli,Koyilandi','2023-09-15'),
    (410,'Saranya','Aluva,Perumbavoor','2024-02-10');
    
## Display of 'Customer' Table
    
SELECT * FROM Customer;	

## Insertion of data into the table'Issuestatus'.

INSERT INTO Issuestatus VALUES
	(501,402,'Historical Chronicles','2023-06-15',978135792),
    (502,407,'Classic Literature Classics','2023-12-28',978112233),
    (503,404,'The Great Library Adventure','2024-02-13',978123486),
    (504,401,'Cooking Adventures','2024-03-20',978987636),
    (505,408,'Mystery at Midnight Manor','2024-04-10',978988554),
    (506,409,'Classic Literature Classics','2023-06-06',978112233),
    (507,406,'Science Explorations','2024-05-01',978543210),
    (508,405,'Cooking Adventures','2024-03-09',978987636),
    (509,404,'Poetry Anthology','2024-03-20',978135124),
    (510,410,'Mystery at Midnight Manor','2024-05-10',978988554);
    
## Display of 'Issuestatus' Table
    
SELECT * FROM Issuestatus;

## Insertion of data into the table'Returnstatus'.

INSERT INTO Returnstatus VALUES
	(601,402,'Historical Chronicles','2024-01-15',978135792),
    (602,407,'Classic Literature Classics','2024-04-28',978112233),
    (603,404,'The Great Library Adventure','2024-05-01',978123486),
    (604,401,'Cooking Adventures','2024-05-10',978987636),
    (605,408,'Mystery at Midnight Manor','2024-04-30',978988554),
    (606,409,'Classic Literature Classics','2023-11-06',978112233),
    (607,406,'Science Explorations','2024-05-14',978543210),
    (608,405,'Cooking Adventures','2024-04-18',978987636),
    (609,404,'Poetry Anthology','2024-04-30',978135124),
    (610,410,'Mystery at Midnight Manor','2024-05-15',978988554);
    
## Display of 'Returnstatus' Table.
    
SELECT * FROM Returnstatus;

-- 1. Retrieve the book title, category, and rental price of all available books.

SELECT Book_title, Category, Rental_Price
FROM Books
WHERE Status = 'yes';

-- 2. List the employee names and their respective salaries in descending order of salary. 

SELECT Emp_name,Salary
FROM Employee
ORDER BY Salary DESC;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 

SELECT Books.Book_title,Customer.Customer_name
FROM Books 
JOIN Issuestatus ON Books.Isbn = Issuestatus.Isbn_book
JOIN Customer ON Issuestatus.Issued_cust = Customer.Customer_Id;

-- 4. Display the total count of books in each category. 

SELECT Category,COUNT(*) AS 'Total Count'
FROM Books
GROUP BY Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

SELECT Emp_name,Position,Salary
FROM Employee
WHERE Salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.

SELECT Customer_name
FROM Customer
WHERE Reg_date < '2022-01-01'
AND Customer_id NOT IN (SELECT Issued_cust FROM Issuestatus);

-- 7. Display the branch numbers and the total count of employees in each branch. 

SELECT Branch_no, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY Branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023.

SELECT Customer.Customer_name 
FROM Customer JOIN Issuestatus
ON Customer.Customer_Id = Issuestatus.Issued_cust
WHERE Issuestatus.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

-- 9. Retrieve book_title from book table containing history. 

SELECT Book_title AS 'History Books'
FROM Books
WHERE Category LIKE '%history%';

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees

SELECT Branch_no,COUNT(*) AS 'Total Employees'
FROM Employee
GROUP BY Branch_no
HAVING COUNT(*) > 5;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses.

SELECT Employee.Emp_name, Branch.Branch_address
FROM Employee
JOIN Branch ON Employee.Branch_no = Branch.Branch_no;

-- 12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.

SELECT Customer.Customer_name
FROM Customer 
JOIN Issuestatus ON Customer.Customer_Id = Issuestatus.Issued_cust
JOIN Books ON Issuestatus.isbn_book = Books.Isbn
WHERE Books.Rental_Price > 25;





