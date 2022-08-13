select *,(ordersellingprice -ordercostprice) as profit
 from {{ ref('raw_orders') }}