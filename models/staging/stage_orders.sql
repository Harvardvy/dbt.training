select 
--raw_orders
orderid,orderdate,shipdate,shipmethod,(ordersellingprice -ordercostprice) as profit,
--raw_customers
customername,segment,country,state
 from {{ ref('raw_orders') }}
 left join {{ ref('raw_customer') }}