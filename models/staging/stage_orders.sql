select 
--raw_orders
orderid,orderdate,shipdate,shipmode,(ordersellingprice -ordercostprice) as profit,
--raw_customers
customername,segmnt,country,state,
--raw_products
category,productname,subcategory
 from {{ ref('raw_orders') }}
 left join {{ ref('raw_customer') }}
 left join {{ ref('raw_product') }}