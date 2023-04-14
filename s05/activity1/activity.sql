-- MySQL S5 Activity:

-- 1. Return the customerName of the customers who are from the Philippines

SELECT customerName FROM customers WHERE country = "Philippines";

-- 2. Return the contactLastName and contactFirstName of customers with name "La Rochelle Gifts"

SELECT contactLastName, contactFirstName FROM customers WHERE customerName = "La Rochelle Gifts";

-- 3. Return the product name and MSRP of the product named "The Titanic"

SELECT productName, MSRP FROM products WHERE productName = "The Titanic";


-- 4. Return the first and last name of the employee whose email is "jfirrelli@classicmodelcars.com"

SELECT firstName, lastName FROM employees WHERE email = "jfirrelli@classicmodelcars.com";

-- 5. Return the names of customers who have no registered state

SELECT customerName FROM customers WHERE state IS NULL;

-- 6. Return the first name, last name, email of the employee whose last name is Patterson and first name is Steve

SELECT firstName, lastName, email FROM employees WHERE lastName = "Patterson" AND firstName = "Steve";


-- 7. Return customer name, country, and credit limit of customers whose countries are NOT USA and whose credit limits are greater than 3000

SELECT customerName, country, creditLimit FROM customers WHERE country != "USA" AND creditLimit > 3000;


-- 8. Return the customer numbers of orders whose comments contain the string 'DHL'

SELECT customerNumber FROM orders WHERE comments LIKE "%DHL%";


-- 9. Return the product lines whose text description mentions the phrase 'state of the art'

SELECT productLine FROM productlines WHERE textDescription LIKE "%state_of_the_art%";


-- 10. Return the countries of customers without duplication

SELECT DISTINCT country FROM customers;

-- 11. Return the statuses of orders without duplication

SELECT DISTINCT status FROM orders;

-- 12. Return the customer names and countries of customers whose country is USA, France, or Canada

SELECT customerName, country FROM customers WHERE country IN ("USA", "France", "Canada");


-- 13. Return the first name, last name, and office's city of employees whose offices are in Tokyo

SELECT firstName, lastName, city FROM employees
	JOIN offices ON employees.officeCode = offices.officeCode
	WHERE city = "Tokyo";

-- 14. Return the customer names of customers who were served by the employee named "Leslie Thompson"

SELECT customerName FROM customers
	JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
	WHERE firstName = "Leslie" AND lastName = "Thompson";

-- 15. Return the product names and customer name of products ordered by "Baane Mini Imports"
SELECT productName, customerName FROM products
	JOIN orderdetails ON products.productCode = orderdetails.productCode
	JOIN orders ON orderdetails.orderNumber = orders.orderNumber
	JOIN customers ON orders.customerNumber = customers.customerNumber
	WHERE customerName = "Baane Mini Imports";



-- 16. Return the employees' first names, employees' last names, customers' names, and offices' countries of transactions whose customers and offices are in the same country

SELECT firstName, lastName, customerName, offices.country FROM customers
	LEFT JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
	JOIN offices ON employees.officeCode = offices.officeCode
	WHERE customers.country = offices.country;


-- 17. Return the product name and quantity in stock of products that belong to the product line "planes" with stock quantities less than 1000
SELECT productName, quantityInStock FROM products WHERE productLine = "planes" AND  quantityInStock < 1000;


-- 18. Show the customer's name with a phone number containing "+81".
SELECT customerName FROM customers WHERE phone LIKE "%+81%";


