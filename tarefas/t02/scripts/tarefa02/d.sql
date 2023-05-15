/*Faça uma função para calcular quantos dias de atraso tem uma atividade. A função retornará
negativo se estiver atrasada e positiva se estiver em dia.*/

CREATE OR REPLACE FUNCTION calcular_atraso(codAtividade INT) RETURNS INTEGER AS $$
DECLARE
    atraso INTERVAL;
BEGIN
    SELECT (dataConclusao - dataFim) INTO atraso
    FROM atividade
    WHERE codigo = codAtividade;

    RETURN EXTRACT(DAY FROM atraso);
END;
$$ LANGUAGE plpgsql;


SELECT calcular_atraso(1);