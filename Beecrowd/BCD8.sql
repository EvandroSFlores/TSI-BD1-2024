SELECT pd.name, c.name
FROM products pd
INNER JOIN categories c ON pd.id_categories = c.id
WHERE pd.amount > 100 AND pd.id_categories IN (1,2,3,6,9);