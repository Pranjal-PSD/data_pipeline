{% snapshot customer_snapshot_check %}
  {{
      config(
          target_schema='snapshots',
          unique_key='customer_id',
          strategy='check',
          check_cols=['customer_name', 'customer_status']
      )
  }}

  SELECT
      customer_id,
      customer_name,
      customer_status
  FROM {{ ref('customers') }}

{% endsnapshot %}
