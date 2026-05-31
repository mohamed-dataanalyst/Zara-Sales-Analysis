CREATE VIEW sales_1 AS
SELECT 
    *,
    sales_volume * price AS total_revenue,
    case
        when price < 53 then 'low'
        when price < 93 then 'medium'
        else 'high' END AS price_category
FROM sales