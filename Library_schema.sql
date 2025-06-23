-- Create Database
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

-- Categories
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

-- Authors
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

-- Books
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category_id INT,
    isbn VARCHAR(20) UNIQUE,
    published_year INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
) ENGINE=InnoDB;

-- Book_Author
CREATE TABLE Book_Author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Members
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
) ENGINE=InnoDB;

-- Loans(lending and returning of books)
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
) ENGINE=InnoDB;

