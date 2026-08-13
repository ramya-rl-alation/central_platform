SELECT
    id AS order_id,
    customer_id,
    amount
FROM {{ source('raw', 'orders') }}
