select *,(ordersellingprice -ordercostprice) as profit
 from cloud_raw.globalmart.orders