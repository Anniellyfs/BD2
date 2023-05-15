/*Faça um procedimento para exibir a equipe de um projeto, exibindo o nome do funcionário, a
sigla do departamento.*/

CREATE OR REPLACE FUNCTION exibir_equipe_projeto(projeto_id INT)
RETURNS TABLE (nome_funcionario VARCHAR(15), sigla_departamento VARCHAR(15)) AS
$$
BEGIN
  RETURN QUERY
    SELECT f.nome, d.sigla
    FROM projeto p
    INNER JOIN equipe e ON p.equipe = e.codigo
    INNER JOIN membro m ON e.codigo = m.codEquipe
    INNER JOIN funcionario f ON m.codFuncionario = f.codigo
    INNER JOIN departamento d ON f.depto = d.codigo
    WHERE p.codigo = projeto_id;
END;
$$
LANGUAGE plpgsql;

SELECT * FROM exibir_equipe_projeto(1); -- Substitua o valor '1' pelo código do projeto desejado

