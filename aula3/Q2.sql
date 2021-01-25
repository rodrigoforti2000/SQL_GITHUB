SELECT      

DISTINCT CASE WHEN product_category_name IS NULL THEN 'Outros'
     
     WHEN product_category_name = 'alimentos' 
     OR product_category_name = 'alimentos_bebidas' THEN 'alimentos'

     WHEN product_category_name in ('artes','artes_e_artesanato') THEN 'artes'

     WHEN product_category_name LIKE '%artigos%' THEN 'artigos'

     ELSE product_category_name END AS prod_fill

FROM tb_products

ORDER BY 1


