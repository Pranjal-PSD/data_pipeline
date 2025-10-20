SELECT 
    customer_id,
    customer_name,
    customer_status,
    dbt_valid_from,
    dbt_valid_to
FROM {{ ref('customer_snapshot_check') }}
WHERE dbt_valid_to IS NULL