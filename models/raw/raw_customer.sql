{{
    config(
        materialized='table'
    )
}}

select * from 
--cloud_raw.globalmart.customers
{{ source('GLOBALMART', 'customers') }}