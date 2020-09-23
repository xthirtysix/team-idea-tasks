-- a. answer
SELECT
  Brand.BrandName AS Brand,
  AVG(Auto.Price) AS `Average Price`
FROM
 Brand
JOIN
  Auto ON Brand.BrandId = Auto.BrandId
GROUP BY
  Brand.BrandName
ORDER BY
  AVG(Auto.Price) DESC
-- ----------------------------
-- b. answer
SELECT
  Brand.BrandCountry AS Country,
  COUNT(Auto.BrandId) AS Ammount
FROM
  Brand
JOIN
  Auto ON Auto.BrandId = Brand.BrandId
WHERE
  Brand.BrandCountry = 'Germany'
-- ----------------------------
-- c. answer
SELECT
  Brand.BrandName AS "Company",
  Auto.AutoModel AS "Product Name"
FROM Auto, Brand
 WHERE Auto.BrandId = Brand.BrandId
  AND Auto.Price =
   (
     SELECT MAX(Auto.Price)
       FROM Auto
       WHERE Auto.BrandId = Brand.BrandId
   );
-------------------------------