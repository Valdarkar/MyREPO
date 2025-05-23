USE tcm;
SELECT * FROM shop;
/*Первая часть*/
SELECT Brand AS Type FROM shop WHERE Category = 'Верхняя одежда';
SELECT * FROM shop WHERE Store = 'Ozon' OR Store ='VK-Shop';
SELECT * FROM shop WHERE NOT Price = 4900 AND Brand = 'La Forme';
SELECT * FROM shop WHERE ID BETWEEN 3 AND 6;
SELECT * FROM shop WHERE ID IN (2, 4);
SELECT * FROM shop ORDER BY Price DESC; 
/*Вторая часть*/
SELECT Brand FROM shop GROUP BY Brand;
SELECT Brand, count(ID) FROM shop GROUP BY Brand;
SELECT Category, sum(Price) FROM shop GROUP BY Category;
SELECT Brand, max(Price) FROM shop GROUP BY Brand;
SELECT Category, min(Price) FROM shop GROUP BY Category;
SELECT Brand, ROUND(avg(Price), 2) FROM shop GROUP BY Brand;
SELECT Brand, count(ID) FROM shop WHERE NOT Brand = 'La Forme' GROUP BY Brand HAVING count(Brand) > 1;