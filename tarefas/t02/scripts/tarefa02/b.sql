/*Faça uma função para calcular a média de idade por departamento.*/

CREATE OR REPLACE FUNCTION calcular_media_idade_por_departamento()
  RETURNS TABLE (codigo INT, media_idade DECIMAL(10, 2)) AS $$
BEGIN
  RETURN QUERY
  SELECT departamento.codigo, AVG(EXTRACT(YEAR FROM age(funcionario.dataNasc))) AS media_idade
  FROM departamento
  LEFT JOIN funcionario ON departamento.codigo = funcionario.depto
  GROUP BY departamento.codigo;
  
  RETURN;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM calcular_media_idade_por_departamento();