
/*Questão 14. Faça uma consulta que selecione o nome dos funcionários responsáveis por atividades, 
o número de atividades que este funcionário é responsável. Crie e use views na consulta.*/


-- Criação da view para contar o número de atividades por funcionário
CREATE VIEW atividades_por_funcionario AS
SELECT cod_responsavel, COUNT(*) AS num_atividades
FROM atividade
GROUP BY cod_responsavel;

-- Consulta para obter o nome dos funcionários responsáveis por atividades e o número de atividades que cada funcionário é responsável
SELECT f.nome AS nome_funcionario, COALESCE(a.num_atividades, 0) AS numero_atividades
FROM funcionario f
LEFT JOIN atividades_por_funcionario a ON f.codigo = a.cod_responsavel;
