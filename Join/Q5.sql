-- peso médio dos produtos vendidos por sellers de cada estado?
-- apenas 2017 e entregues

SELECT t4.order_id

FROM tb_sellers as t1

LEFT JOIN tb_order_items as t2
ON t1.seller_id = t2.seller_id

LEFT JOIN tb_order_items as t3
ON t2.product_id = t3.product_id

LEFT JOIN tb_orders as t4
ON t3.order_id = t4.order_id


