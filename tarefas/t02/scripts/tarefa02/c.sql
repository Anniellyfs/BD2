/*Faça um procedimento para exibir os funcionários com idade acima da média do seu
departamento.*/

CREATE OR REPLACE FUNCTION exibir_funcionarios_acima_media() RETURNS TABLE (
    codigo INT,
    nome VARCHAR(15),
    idade INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT f.codigo, f.nome, EXTRACT(YEAR FROM age(current_date, f.dataNasc))::INT AS idade
    FROM funcionario f
    INNER JOIN departamento d ON f.depto = d.codigo
    INNER JOIN (
        SELECT depto, AVG(EXTRACT(YEAR FROM age(current_date, dataNasc))) AS media_idade
        FROM funcionario
        GROUP BY depto
    ) AS avg_age ON f.depto = avg_age.depto
    WHERE EXTRACT(YEAR FROM age(current_date, f.dataNasc)) > avg_age.media_idade::INT
    GROUP BY f.codigo, f.nome, idade;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM exibir_funcionarios_acima_media();