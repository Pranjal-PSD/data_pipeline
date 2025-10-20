SELECT 
    customer_id,
    customer_name,
    customer_status,
    dbt_valid_from,
    dbt_valid_to
FROM dbt_db.snapshots.customer_snapshot_check
WHERE dbt_valid_to IS NULL