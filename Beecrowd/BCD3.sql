SELECT pd.name, pv.name, c.name
FROM products pd 
INNER JOIN providers pv ON pd.id_providers = pv.id
INNER JOIN categories c ON pd.id_categories = c.id
WHERE pv.name = 'Sansul SA' AND c.name = 'Imported';