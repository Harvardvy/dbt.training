select 
--raw_orders
orderid,orderdate,shipdate,shipmode,ordersellingprice,ordercostprice,(ordersellingprice -ordercostprice) as profit,
--raw_customers
customername,segmnt,country,state,
--raw_products
p.productid,category,productname,subcategory
 from {{ ref('raw_orders') }} as o
 left join {{ ref('raw_customer') }} as c
  on o.customerid=c.customerid
 left join {{ ref('raw_product') }} as p
  on o.productid=p.productid