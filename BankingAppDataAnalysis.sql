-- 1: Problem Statement:
-- For each product, show the product name "Product" and the product type name "Type.

SELECT p.NAME AS 'Product', pt.NAME  FROM product p
JOIN product_type pt
USING (PRODUCT_TYPE_CD)
;

-- 2: Problem Statement:
-- For each branch, list the branch name and city, plus the last name and title of each employee who works in that branch.

SELECT * FROM branch;
SELECT * FROM employee;
SELECT B.NAME, B.CITY, E.LAST_NAME,E.TITLE FROM branch B
JOIN employee E 
ON B.BRANCH_ID=E.ASSIGNED_BRANCH_ID;

-- 3:  Problem statement:
-- Show a list of each unique employee title.

SELECT DISTINCT TITLE FROM employee;

-- 4: Problem statement:
-- Show the last name and title of each employee, along with the last name and title of that employee's boss.

SELECT E.LAST_NAME,E.TITLE, B.LAST_NAME,B.TITLE FROM employee E
LEFT JOIN employee B 
ON E.SUPERIOR_EMP_ID=B.EMP_ID;

-- 5: Problem Statement:
-- For each account, show the name of the account's product, the available balance, and the customer's last name.

SELECT * FROM account;
SELECT * FROM product;
SELECT * FROM individual;

SELECT P.NAME,A.AVAIL_BALANCE,I.LAST_NAME FROM account A
JOIN product P ON
A.PRODUCT_CD=P.PRODUCT_CD
LEFT JOIN customer C
on A.CUST_ID=C.CUST_ID
LEFT JOIN individual I ON 
C.CUST_ID=I.CUST_ID;


-- 6:  Problem Statement:
-- List all account transaction details for individual customers whose last name starts with 'T'.

SELECT at.* FROM acc_transaction at
left join account A USING(ACCOUNT_ID)
LEFT JOIN customer C
on A.CUST_ID=C.CUST_ID
LEFT JOIN individual I ON 
C.CUST_ID=I.CUST_ID
WHERE I.LAST_NAME LIKE 'T%';






