select productid,productname,category,subcategory,sum(profit)
from {{ ref('stage_orders') }}
group by 
productid,productname,category,subcategory