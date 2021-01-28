-- cidade e estado dos seller que mais venderam

SELECT 
        seller_city,
        seller_state,
        sum(price),
        count(*)


FROM tb_order_items as t1 

LEFT JOIN tb_sellers as t2
ON t1.seller_id = t2.seller_id


GROUP BY t1.seller_id

ORDER BY sum(price) DESC