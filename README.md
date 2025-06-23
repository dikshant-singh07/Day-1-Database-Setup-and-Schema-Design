# Day-1-Database-Setup-and-Schema-Design
Day 1 of 30 day sql developer internship using MySQL at Elevate Labs

# Library Management System - Database Schema

## Overview
This repository contains the SQL script for creating a "Library Management System" database schema using MySQL. The schema supports key features such as managing books, authors, members, loans, and categories.

---

## Database Schema Description

The schema includes the following tables:

- **Categories**: Stores book categories or genres.
- **Authors**: Stores information about book authors.
- **Books**: Stores book details including title, category, publisher, and ISBN (*Intenational standard book number*).
- **Book_Author**: Junction table to manage many-to-many relationships between books and authors.
- **Members**: Contains member information who borrow books.
- **Loans**: Tracks lending and returning of books.

---

## Features

- Proper normalization to reduce data redundancy.
- Use of primary keys and foreign keys to enforce referential integrity.
- `AUTO_INCREMENT` for surrogate keys.
- Data types and constraints suitable for real-world data.
- Prepared for transactional consistency (using InnoDB storage engine).

---

## Notes

- The schema uses MySQL-specific features like *`AUTO_INCREMENT`* and *`ENGINE=InnoDB`*.
- Date columns do not have default values due to SQL mode restrictions insert dates explicitly as per the need.

For any questions or suggestions, feel free to reach out.

---

*This project is part of the SQL Developer Internship – Day 1 task.*
