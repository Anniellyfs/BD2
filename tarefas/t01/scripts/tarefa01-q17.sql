/*Questão 17. Faça uma consulta que selecione o código  e descrição do projeto cujo gerente do departamento que ele faz parte ganhe mais que os outros gerentes de departamento.
*/

SELECT p.codigo, p.descricao
FROM projeto p
JOIN departamento d ON p.cod_depto = d.codigo
JOIN funcionario f ON d.cod_gerente = f.codigo
WHERE f.salario > (
    SELECT MAX(salario)
    FROM funcionario
    WHERE codigo <> f.codigo
      AND cod_depto = d.codigo
);
