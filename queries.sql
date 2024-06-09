USE cardealershipdatabase;

SELECT * FROM dealerships;

SELECT v.* 
FROM vehicles v
JOIN inventory i ON v.VIN = i.VIN
WHERE i.dealership_id = 1;

SELECT * FROM vehicles WHERE VIN = '1HGCM82633A123456';

SELECT d.* 
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = '1HGCM82633A123456';

SELECT DISTINCT d.* 
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.VIN = v.VIN
WHERE v.VIN = '1HGCM82633A123456';

SELECT sc.*
FROM sales_contracts sc
JOIN inventory i ON sc.VIN = i.VIN
WHERE i.dealership_id = 1
AND sc.sale_date BETWEEN '2023-01-01' AND '2023-12-31';