{{
    config(
        materialized='table'
    )
}}

select * from 
--cloud_raw.globalmart.orders
{{ source('GLOBALMART', 'orders') }}