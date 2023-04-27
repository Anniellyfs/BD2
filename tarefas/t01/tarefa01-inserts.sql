INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('João', 'M', '1990-05-20', 5000.00, 1),
('Maria', 'F', '1985-09-10', 6000.00, 2),
('Pedro', 'M', '1995-02-14', 4000.00, 1),
('Ana', 'F', '1992-11-30', 5500.00, 2),
('Lucas', 'M', '1998-07-08', 4500.00, 1);

INSERT INTO departamento (descricao, cod_gerente) VALUES
('Vendas', 1),
('Produção', 2),
('Marketing', 3),
('RH', 4),
('Financeiro', 5);

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('Projeto A', 'Projeto para aumento de vendas', 1, 1, '2022-01-01', '2022-12-31'),
('Projeto B', 'Projeto para otimização da produção', 2, 2, '2022-02-01', '2022-12-31'),
('Projeto C', 'Projeto para campanha publicitária', 3, 3, '2022-03-01', '2022-12-31'),
('Projeto D', 'Projeto de desenvolvimento de equipe', 4, 4, '2022-04-01', '2022-12-31'),
('Projeto E', 'Projeto de análise financeira', 5, 5, '2022-05-01', '2022-12-31');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Atividade 1', 'Realizar pesquisas de mercado', 1, '2022-01-01', '2022-01-31'),
('Atividade 2', 'Desenvolver novo produto', 2, '2022-02-01', '2022-03-31'),
('Atividade 3', 'Criar campanha publicitária', 3, '2022-03-01', '2022-06-30'),
('Atividade 4', 'Realizar treinamentos com funcionários', 4, '2022-04-01', '2022-07-31'),
('Atividade 5', 'Analisar fluxo de caixa', 5, '2022-05-01', '2022-12-31');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
