/*Questão 2. Faça uma consulta que selecione o nome de todos os funcionários, exceto o mais idoso.*/

SELECT nome
FROM funcionario
WHERE dt_nasc <> (
    SELECT MAX(dt_nasc)
    FROM funcionario
);
