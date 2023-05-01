
/*Questão 8. Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o número de projetos de cada departamento. Deve aparecer os departamentos sem gerente e sem projetos. Crie e use views na consulta, se necessário.
*/

SELECT d.descricao AS nome_departamento, 
       COALESCE(f.nome, 'Sem gerente') AS nome_gerente,
       COUNT(p.codigo) AS numero_projetos
FROM departamento d
LEFT JOIN funcionario f ON d.cod_gerente = f.codigo
LEFT JOIN projeto p ON d.codigo = p.cod_depto
GROUP BY d.codigo, f.nome
ORDER BY d.codigo;