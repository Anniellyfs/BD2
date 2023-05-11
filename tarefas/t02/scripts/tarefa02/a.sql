SELECT nome, DATE_PART('year', AGE(CURRENT_DATE, dataNasc)) AS idade
FROM funcionario;