SELECT 
    customer_id,
    customer_name,
    customer_status,
    dbt_valid_from,
    dbt_valid_to
FROM dbt_db.snapshots.customer_snapshot_check
WHERE dbt_valid_to IS NOT NULL
ORDER BY customer_id, dbt_valid_from