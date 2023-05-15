/*Faça uma função para calcular a porcentagem de atividades que um membro de equipe fez no
projeto.*/

CREATE OR REPLACE FUNCTION calcular_porcentagem_atividades_membro(cod_membro INT, cod_projeto INT)
  RETURNS DECIMAL AS
$$
DECLARE
  total_atividades_projeto INT;
  total_atividades_membro INT;
  porcentagem DECIMAL;
BEGIN
  SELECT COUNT(*) INTO total_atividades_projeto
  FROM atividade_projeto ap
  WHERE ap.codprojeto = cod_projeto;

  SELECT COUNT(*) INTO total_atividades_membro
  FROM atividade_membro am
  WHERE am.codmembro = cod_membro;

  IF total_atividades_projeto > 0 THEN
    porcentagem := (total_atividades_membro::DECIMAL / total_atividades_projeto::DECIMAL) * 100;
  ELSE
    porcentagem := 0;
  END IF;

  RETURN porcentagem;
END;
$$
LANGUAGE plpgsql;

SELECT calcular_porcentagem_atividades_membro(1, 2); -- Substitua os valores 1 e 2 pelos códigos correspondentes aos membros da equipe e projetos desejados.
