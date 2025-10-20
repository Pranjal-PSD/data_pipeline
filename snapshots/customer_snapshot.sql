{% snapshot customer_snapshot %}

{{ config(
    target_schema='snapshots',
    unique_key='customer_id',
    strategy='timestamp',
    updated_at='updated_at'
) }}

SELECT
    customer_id,
    customer_name,
    customer_status,
    updated_at
FROM {{ source('raw', 'customers') }}  -- must match YAML source name

{% endsnapshot %}
