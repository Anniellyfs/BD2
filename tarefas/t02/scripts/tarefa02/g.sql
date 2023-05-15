/*Faça uma função para calcular quantas atividades um membro da equipe fez no projeto.*/

CREATE OR REPLACE FUNCTION calcular_atividades_membro(cod_projeto INT, cod_membro INT)
RETURNS INT AS
$$
DECLARE
    count_atividades INT;
BEGIN
    SELECT COUNT(*) INTO count_atividades
    FROM atividade_membro am
    INNER JOIN atividade_projeto ap ON am.codAtividade = ap.codAtividade
    WHERE ap.codProjeto = cod_projeto AND am.codMembro = cod_membro;
    
    RETURN count_atividades;
END;
$$
LANGUAGE plpgsql;

SELECT calcular_atividades_membro(1, 2);  --  Substitua os valores 1 e 2 pelos códigos correspondentes aos membros da equipe e projetos desejados
