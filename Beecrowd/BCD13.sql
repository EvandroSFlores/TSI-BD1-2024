SELECT name, cast(EXTRACT(DAY FROM payday) AS INT) AS day
FROM loan;