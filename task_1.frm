SELECT 
 Brand.BrandName AS Brand, 
 COUNT(Auto.Price) AS Ammount,
 IFNULL(SUM(Auto.Price), 0) AS `Total price`
FROM 
 Brand 
JOIN
 Auto ON Brand.BrandId = Auto.BrandId
GROUP BY
 Brand.BrandId
ORDER BY
 `Total price` DESC

