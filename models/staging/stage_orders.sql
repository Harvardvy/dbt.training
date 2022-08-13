select 
--raw_orders
orderid,orderdate,shipdate,shipmode,(ordersellingprice -ordercostprice) as profit,
--raw_customers
customername,segmnt,country,state
 from {{ ref('raw_orders') }}
 left join {{ ref('raw_customer') }}