/*Faça uma função para calcular quantos dias de atraso tem um projeto. A função retornará
negativo se estiver atrasada e positiva se estiver em dia*/

CREATE OR REPLACE FUNCTION calcular_atraso_projeto(projeto_id INT)
RETURNS INTEGER AS $$
DECLARE
    atraso INTEGER;
BEGIN
    SELECT CASE
        WHEN dataConclusao IS NULL THEN 0 -- Projeto ainda em andamento, sem atraso
        ELSE (dataConclusao - dataFim)
    END INTO atraso
    FROM projeto
    WHERE codigo = projeto_id;

    RETURN atraso;
END;
$$
LANGUAGE plpgsql;

SELECT calcular_atraso_projeto(1); -- Substitua 1 pelo código do projeto desejado
