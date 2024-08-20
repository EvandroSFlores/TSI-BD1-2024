SELECT pd.name, pv.name, pd.price
FROM products pd
INNER JOIN providers pv ON pd.id_providers = pv.id
INNER JOIN categories c ON pd.id_categories = c.id
WHERE pd.price > 1000 AND c.name = 'Super Luxury';