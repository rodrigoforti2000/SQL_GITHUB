SELECT 
       t2.product_category_name,
       sum(t1.price) as receita,
       count(*) as total_item_vendidos,
       count(DISTINCT t1.order_id) as total_de_pedidos

FROM tb_order_items as t1

LEFT JOIN tb_products as t2

ON t1.product_id = t2.product_id

LEFT JOIN tb_orders as t3

ON t1.order_id = t3.order_id

WHERE t3.order_status = 'delivered'
AND strftime('%Y', t3.order_approved_at) = '2017'       

GROUP BY t2.product_category_name

ORDER BY receita DESC