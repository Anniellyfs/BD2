CREATE TABLE funcionario (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50),
	sexo CHAR(1),
	dtNasc DATE,
	salario DECIMAL(10,2),
	codSupervisor INT,
	codDepto INT,
	FOREIGN KEY (codSupervisor) REFERENCES funcionario(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE departamento (
	codigo SERIAL PRIMARY KEY,
	sigla VARCHAR(10),
	descricao VARCHAR(50),
	codGerente INT,
	UNIQUE (sigla),
	FOREIGN KEY (codGerente) REFERENCES funcionario(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE projeto (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50),
	descricao VARCHAR(250),
	codResponsavel INT,
	codDepto INT,
	dataInicio DATE, 
	dataFim DATE,
	UNIQUE (nome),
	FOREIGN KEY (codResponsavel) REFERENCES funcionario(codigo) ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY (codDepto) REFERENCES departamento(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);
 
CREATE TABLE atividade (
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(250),
	codProjeto INT,
	dataInicio DATE, 
	dataFim DATE,
	FOREIGN KEY (codProjeto) REFERENCES projeto(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);