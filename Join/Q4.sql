-- Receita média gerada por cliente
-- so pedidos entregues

SELECT 
        t1.customer_state,
        sum(t3.price)/count(DISTINCT t1.customer_id) as avg_por_cliente,
        min(t3.price) as menor_compra,
        max(t3.price) as maior_compra

FROM tb_customers as t1

LEFT JOIN tb_orders as t2
ON t1.customer_id = t2.customer_id

LEFT JOIN tb_order_items as t3
ON t2.order_id = t3.order_id

WHERE t2.order_status = 'delivered'

GROUP BY t1.customer_state
