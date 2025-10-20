-- Test: Ensure there is only one current record per customer in the snapshot

SELECT 
    customer_id
FROM dbt_db.snapshots.customer_snapshot
WHERE dbt_valid_to IS NULL
GROUP BY customer_id
HAVING COUNT(*) > 1