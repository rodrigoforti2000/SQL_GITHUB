SELECT product_category_name,
       min(product_weight_g) as produto_peso_min,
       avg(product_weight_g) as produto_peso_avg,
       max(product_weight_g) as produto_peso_max

FROM tb_products

GROUP BY product_category_name

HAVING produto_peso_avg > 2000

ORDER BY produto_peso_avg DESC
