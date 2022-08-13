{{
    config(
        materialized='table'
    )
}}

select * from cloud_raw.globalmart.orders