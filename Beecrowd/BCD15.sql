SELECT 'Approved: ' || name AS name, grade
FROM students
WHERE grade >= 7
ORDER BY grade DESC;

/* || é igual a 
CONCAT(primeiro_nome, ' ', sobrenome) AS nome_completo
serve para concatenar
primeiro_nome + ' ' + sobrenome AS nome_completo*/