/*Questão 2. Faça uma consulta que selecione o nome de todos os funcionários, exceto o mais idoso.*/

SELECT nome FROM funcionario 
WHERE dtNasc > (SELECT min(dtNasc) FROM funcionario)
