select customerid,customername,segmnt,country,state,sum(profit) as amount
from {{ ref('stage_orders') }}
group by customerid,customername,segmnt,country,state