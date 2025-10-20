-- This model demonstrates how to use snapshot data for current and historical insights

WITH snapshot_data AS (
    SELECT 
        customer_id,
        customer_name,
        customer_status,
        dbt_valid_from,
        dbt_valid_to,
        CASE 
            WHEN dbt_valid_to IS NULL THEN 'current'
            ELSE 'historical'
        END AS record_status
    FROM dbt_db.snapshots.customer_snapshot
)

SELECT 
    customer_id,
    customer_name,
    customer_status,
    record_status,
    dbt_valid_from,
    dbt_valid_to
FROM snapshot_data
ORDER BY customer_id, dbt_valid_from