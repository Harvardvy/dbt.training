select productid,productname,category,subcategory,sum(profit) as amount
from {{ ref('stage_orders') }}
group by 
productid,productname,category,subcategory