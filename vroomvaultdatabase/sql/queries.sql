USE vroomvault;

-- find the total number of rentals for each customer, sorting by DESC total rentals:
SELECT
    CONCAT(cus.first_name, ' ', cus.last_name) AS 'Customer',
    COUNT(ren.rental_id) AS 'Total Rentals'
FROM customers cus
LEFT JOIN rentals ren ON cus.customer_id = ren.customer_id
GROUP BY cus.customer_id
ORDER BY `Total Rentals` DESC;

-- find the brand that has the most rentals:

CREATE VIEW most_rented AS
SELECT
    bra.brand AS 'Brand',
    COUNT(ren.rental_id) AS 'Total Rentals'
FROM brands bra
JOIN inventory inv ON bra.brand_id = inv.brand_id
JOIN rentals ren ON inv.inventory_id = ren.inventory_id
GROUP BY bra.brand_id
ORDER BY `Total Rentals` DESC
LIMIT 1;

-- get a list of customers who have rented the most rented brand:

SELECT 
	CONCAT(cus.first_name, ' ', cus.last_name)
    FROM customers cus
    JOIN rentals ren ON cus.customer_id = ren.customer_id
    JOIN inventory inv ON ren.inventory_id = inv.inventory_id
    JOIN brands bra ON inv.brand_id = bra.brand_id
    WHERE bra.brand = (SELECT Brand FROM vroomvault.most_rented)  

-- grouping these clients and creating a column that have how many times each one rented the most rented car, sorting by DESC

SELECT 
	CONCAT(cus.first_name, ' ', cus.last_name),
    COUNT(ren.rental_id) AS 'Total Rentals of Most Rented Car'
    FROM customers cus
    JOIN rentals ren ON cus.customer_id = ren.customer_id
    JOIN inventory inv ON ren.inventory_id = inv.inventory_id
    JOIN brands bra ON inv.brand_id = bra.brand_id
    WHERE bra.brand = (SELECT Brand FROM vroomvault.most_rented)
    GROUP BY cus.customer_id
    ORDER BY `Total Rentals of Most Rented Car` DESC

-- find the average number of rentals per customer:

SELECT
    AVG(`Rentals per Customer`) AS 'Average Rentals per Customer'
FROM (
    SELECT
        cus.customer_id,
        COUNT(ren.rental_id) AS 'Rentals per Customer'
    FROM
        customers cus
    LEFT JOIN
        rentals ren ON cus.customer_id = ren.customer_id
    GROUP BY
        cus.customer_id
) AS `Customer Rentals`;







