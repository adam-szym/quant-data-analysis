CREATE DATABASE burger2;



USE burger2;

SELECT * FROM LBS2;

DESCRIBE LBS2;

SELECT Unit_Cost FROM LBS2;


-- Burgers grouped by type
SELECT Burger_Category, count(*) AS count
FROM LBS2
GROUP BY Burger_Category;


-- Burgers grouped by size
SELECT Burger_Size, count(*) AS count
FROM LBS2
GROUP BY Burger_Size;



-- Most expensive and cheapest burgers
SELECT
	min(Unit_Cost) AS cheapest,
    max(Unit_Cost) AS most_expensive
FROM LBS2;


-- Burgers grouped by cost and size
SELECT
	CASE
		WHEN Unit_Cost >= 2 AND Unit_Cost < 3 THEN "2-3"
        WHEN Unit_Cost >= 3 AND Unit_Cost < 4 THEN "3-4"
        WHEN Unit_Cost >= 4 AND Unit_Cost < 5 THEN "4-5"
        ELSE "5+"
	END AS Unit_Cost_Range, Burger_Size,
    COUNT(*) AS count
FROM LBS2
GROUP BY Unit_Cost_Range, Burger_Size
ORDER BY Unit_Cost_Range, Burger_Size;


-- Burgers grouped by cost and category
SELECT
	CASE
		WHEN Unit_Cost >= 2 AND Unit_Cost < 3 THEN "2-3"
        WHEN Unit_Cost >= 3 AND Unit_Cost < 4 THEN "3-4"
        WHEN Unit_Cost >= 4 AND Unit_Cost < 5 THEN "4-5"
        ELSE "5+"
	END AS Unit_Cost_Range, Burger_Category,
    COUNT(*) AS count
FROM LBS2
GROUP BY Unit_Cost_Range, Burger_Category
ORDER BY Unit_Cost_Range, Burger_Category;


-- Burgers grouped by ingredients
 SELECT Burger_Ingredients, count(*) AS count
 FROM LBS2
 GROUP BY Burger_Ingredients
 ORDER BY Burger_Ingredients DESC;


-- Burgers grouped by company
SELECT Company, COUNT(*) AS count
FROM LBS2
GROUP BY Company
ORDER BY count DESC;
