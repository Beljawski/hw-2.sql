
-- Задача 1. Вывести данные о товарах (проекция: название, ценасоскидкой0.5процента) по убыванию цены.

SELECT 
ProductName,
Price * 0.9995 AS Price_down
FROM Products
Order By Price DESC

-- Задача 2.Вывести товары в диапазоне цены от 50 до 200 EUR (проекция: название, ценаснаценкой30процентов) по возрастанию цены.

SELECT
ProductName,
Price * 1.30 AS Price_up
FROM Products
WHERE
Price between 50 AND 200
ORDER BY Price ASC

-- Задача 3. Вывести всех клиентов, кроме тех, что из USA и UK.

SELECT * 
FROM Customers
WHERE
NOT Country IN ("USA","UK")

-- Задача 4. Вывести товары из категорий 2 и 5 (проекция: всеимеющиесяполя, ценавдолларах)

SELECT *,
Price *1.08 AS Price_usd
FROM Products
WHERE
CategoryID IN (2,5)
