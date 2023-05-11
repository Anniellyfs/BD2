/*Faça uma função para calcular a média de idade por departamento.*/

CREATE OR REPLACE FUNCTION calcular_media_idade_por_departamento()
RETURNS TABLE (departamento_id int, media_idade numeric)
AS $BODY$
BEGIN
  RETURN QUERY
    SELECT d.codigo AS departamento_id, AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, f.dataNasc)))::numeric AS media_idade
    FROM departamento d
    LEFT JOIN funcionario f ON f.depto = d.codigo
    GROUP BY d.codigo;
END;
$BODY$ LANGUAGE plpgsql;

SELECT * FROM calcular_media_idade_por_departamento();