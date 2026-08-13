SELECT
    c.id AS customer_id,
    COUNT(o.id) AS total_orders
FROM {{ ref('stg_customers') }} c
LEFT JOIN {{ ref('stg_orders') }} o ON c.id = o.customer_id
GROUP BY 1
