CREATE TABLE funcionario (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    sexo CHAR(1),
    dt_nasc DATE,
    salario DECIMAL(10,2),
    cod_depto INT,
    FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE departamento (
    codigo SERIAL PRIMARY KEY,
    descricao VARCHAR(50),
    cod_gerente INT,
    FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE projeto (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(250),
    cod_depto INT,
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE atividade (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(250),
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE atividade_projeto (
    cod_projeto INT,
    cod_atividade INT,
    FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);
