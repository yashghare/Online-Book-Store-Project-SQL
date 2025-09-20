# 📚 Online Bookstore Sales Analysis with SQL  

## 📌 Project Overview  
This mini project focuses on analyzing an **online bookstore database** using SQL to extract insights related to:  
- Books and their details  
- Customer demographics and behaviors  
- Orders and revenue patterns  

The project includes SQL queries of increasing complexity, starting from simple retrievals to advanced analytics such as identifying top customers, best-selling books, and stock updates after sales.  

---

## 🗄️ Dataset  
The database consists of the following key tables:  

- **Books**: Contains details like `Book_ID`, `Title`, `Genre`, `Author`, `Price`, `Stock`, `Published_Year`.  
- **Customers**: Contains customer information such as `Customer_ID`, `Name`, `Country`, `City`.  
- **Orders**: Records purchase data including `Order_ID`, `Customer_ID`, `Book_ID`, `Quantity`, `Order_Date`, `Total_Amount`.  

🔗 Dataset Link: [Download Here](https://drive.google.com/file/d/1QmBUoKOqJIlAuibh768RcnwIJcFfUhxz/view?usp=sharing)  

---

## 🎯 Learning Objectives  
By completing this project, you will:  
- Gain hands-on experience in SQL queries for **data exploration** and **analysis**.  
- Learn to apply **aggregation, joins, filtering, and grouping** effectively.  
- Derive insights into **sales performance, customer behavior, and inventory trends**.  
- Develop the ability to write **optimized and interpretable queries**.  

---

## 🚀 Project Tasks  

### 🔹 Basic Level  
1. Retrieve all books in the “Fiction” genre.  
2. Find books published after the year 1950.  
3. List all customers from Canada.  
4. Show orders placed in November 2023.  
5. Retrieve the total stock of books available.  
6. Find the details of the most expensive book.  
7. Show customers who ordered more than 1 quantity of a book.  
8. Retrieve all orders where the total amount exceeds $20.  
9. List all distinct genres in the bookstore.  
10. Find the book with the lowest stock available.  
11. Calculate the total revenue from all orders.  

### 🔹 Intermediate Level  
12. Retrieve the total number of books sold for each genre.  
13. Find the average price of books in the “Fantasy” genre.  
14. List customers who have placed at least 2 orders.  
15. Find the most frequently ordered book.  
16. Show the top 3 most expensive books of the “Fantasy” genre.  

### 🔹 Advanced Level  
17. Retrieve the total quantity of books sold by each author.  
18. List the cities of customers who spent over $30.  
19. Find the customer who spent the most on orders.  
20. Calculate the stock remaining after fulfilling all orders.  

---

## 📂 Files in this Project  

- **📄 Mini Project_ Online Bookstore Sales Analysis with SQL.pdf**  
  Contains the problem statement, dataset link, and detailed project instructions.  

- **💻 SQL_online_bookstore_project1.sql**  
  Includes all SQL query solutions to the tasks above, written using:  
  - `SELECT`, `WHERE`, `ORDER BY`, `DISTINCT`  
  - `JOIN` (INNER and LEFT)  
  - `GROUP BY`, `HAVING`  
  - Aggregation functions (`SUM`, `AVG`, `COUNT`)  

---

## 📝 Expected Outcomes  
- **Basic Level**: Comfort with filtering, sorting, and simple retrievals.  
- **Intermediate Level**: Ability to use joins and aggregations for meaningful analysis.  
- **Advanced Level**: Proficiency in deriving business insights such as revenue trends, customer value, and stock simulation.  

---

## ⚡ How to Run  
1. Load the dataset into your preferred SQL database system (MySQL, PostgreSQL, etc.).  
2. Open the `SQL_online_bookstore_project1.sql` file.  
3. Execute queries step by step to view insights.  
4. Modify queries to experiment with different analysis approaches.  

---

## 📊 Sample Insights You Can Derive  
- Most popular genres among customers.  
- Revenue contribution by different book categories.  
- Cities/countries with the highest spending customers.  
- Remaining inventory after fulfilling all customer orders.  

---

## 👨‍💻 Author  
This project was created as part of a **SQL mini project** to strengthen database analysis and query writing skills.  
