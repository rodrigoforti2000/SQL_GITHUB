-- Vendedores que não venderam de dezembro de 2017

SELECT  
        max(CASE WHEN t1.order_status = 'delivered'
        AND strftime('%Y-%m',order_approved_at) = '2017-12' 
        THEN 1 ELSE 0 END) as flag_dez,
        t2.seller_id


FROM tb_orders as t1

LEFT JOIN tb_order_items as t2
ON t1.order_id = t2.order_id

WHERE t1.order_approved_at	< '2018-01-01'

GROUP BY seller_id

HAVING flag_dez = 0 and seller_id is not NULL