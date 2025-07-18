 /*
Importing classic-models-exports.sql in phpMyAdmin:
1. Download the classic-models-export.sql
2. Go to http://localhost/phpmyadmin/index.php?route=/server/import
3. Click "Choose File" Button, look for the "classic-models-exports.sql" then click “open”.
4. Make sure to untoggle the "Enable foreign key checks" under the "Other options" group.
5. Click the “import” button and once done.
*/

-- Create the SQL code for the following:
-- 1. Return the customerName of the customers who are from the Philippines

	SELECT customerName FROM customers WHERE country = "Philippines";

-- 2. Return the contactLastName and contactFirstName of customers with name "La Rochelle Gifts"

	SELECT contactLastName, contactFirstName FROM customers WHERE customerName = "La Rochelle Gifts";

-- 3. Return the product name and MSRP of the product named "The Titanic"

	SELECT productName, MSRP FROM products where productName = "The Titanic";

-- 4. Return the first and last name of the employee whose email is "jfirrelli@classicmodelcars.com"

	SELECT firstName, lastName FROM employees where email = "jfirrelli@classicmodelcars.com";

-- 5. Return the names of customers who have no registered state

	SELECT customerName, contactLastName, contactFirstName FROM customers WHERE state IS NULL;

-- 6. Return the first name, last name, email of the employee whose last name is Patterson and first name is Steve

	SELECT firstName AS FirstName, lastName AS LastName, email AS Email 
	FROM employees 
	WHERE lastName = "Patterson" AND firstName = "Steve";

-- 7. Return customer name, country, and credit limit of customers whose countries are NOT USA and whose credit limits are greater than 3000

	SELECT customerName, country, creditLimit FROM customers WHERE country != "USA" AND creditLimit >= 3000;

-- 8. Return the customer numbers of orders whose comments contain the string 'DHL'

	SELECT customerNumber FROM orders where comments LIKE "%DHL%";

-- 9. Return the product lines whose text description mentions the phrase 'state of the art'

	SELECT * FROM productlines WHERE textDescription LIKE "%state_of_the_art%";

-- 10. Return the countries of customers without duplication

	SELECT DISTINCT country FROM customers;

-- 11. Return the statuses of orders without duplication

	SELECT DISTINCT status FROM orders;

-- 12. Return the customer names and countries of customers whose country is USA, France, or Canada

	SELECT customerName, country FROM customers WHERE country IN ("USA", "France", "Canada");

-- 13. Return the first name, last name, and office's city of employees whose offices are in Tokyo

	SELECT firstName, lastName, city AS cityOffice FROM employees
	JOIN offices
	ON employees.officeCode = offices.officeCode
	WHERE city = "Tokyo";

-- 14. Return the customer names of customers who were served by the employee named "Leslie Thompson"

	SELECT customerName FROM customers
	JOIN employees
	ON customers.salesRepEmployeeNumber = employees.employeeNumber
	WHERE employees.lastName = "Thompson" 
  	AND employees.firstName = "Leslie";


-- 15. Return the product names and customer name of products ordered by "Baane Mini Imports"

	SELECT productName, customerName FROM customers 
	JOIN orders 
	ON customers.customerNumber = orders.customerNumber
	JOIN orderdetails 
	ON orders.orderNumber = orderdetails.orderNumber
	JOIN products 
	ON orderdetails.productCode = products.productCode
	WHERE 
    customers.customerName = 'Baane Mini Imports';

-- 16. Return the number of customers in the UK

	SELECT COUNT(country) FROM customers where country = "UK";

-- 17. Return the product name and quantity in stock of products that belong to the product line "planes" with stock quantities less than 1000

	SELECT productName, quantityInStock FROM products WHERE productLine = "Planes" AND quantityInStock <= 1000;

-- 18. Show the customer's name with a phone number containing "+81"

	SELECT customerName FROM customers WHERE phone LIKE "%+81%";


-- 19. Find all customers from the US and display the customerNumber, customerName, city, state, and country

	SELECT customerNumber, customerName, city, state, country FROM customers WHERE country = "USA";

-- 20. Show the list of the customer's countries (without duplicates)

	SELECT DISTINCT country from customers;



-- STRETCH GOALS

-- 1. Return the customer names of customers whose customer names don't have 'a' in them


-- 2. Return the last names and first names of employees being supervised by "Anthony Bow"


-- 3. Return the product name and MSRP of the product with the highest MSRP


-- 4. Return the employees' first names, employees' last names, customers' names, and offices' countries of transactions whose customers and offices are in the same country


-- 5. Return the number of products per product line


-- 6. Return the number of customers served by every employee


-- 7. Show the customer's name with the highest credit limit