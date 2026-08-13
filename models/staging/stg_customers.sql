SELECT
    id AS customer_id,
    name AS customer_name,
    email
FROM {{ source('raw', 'customers') }}
