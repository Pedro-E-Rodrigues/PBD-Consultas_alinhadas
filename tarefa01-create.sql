CREATE TABLE departamento (
    codigo INT PRIMARY KEY,
    descricao VARCHAR(100),
    cod_gerente INT
);

CREATE TABLE funcionario (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    sexo CHAR(1),
    dt_nasc DATE,
    salario DECIMAL(10,2),
    cod_depto INT,
    FOREIGN KEY (cod_depto) REFERENCES departamento(codigo)
);

ALTER TABLE departamento ADD CONSTRAINT fk_gerente 
FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo);

CREATE TABLE projeto (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(200),
    cod_depto INT,
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (cod_depto) REFERENCES departamento(codigo),
    FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(200),
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade_projeto (
    cod_projeto INT,
    cod_atividade INT,
    PRIMARY KEY (cod_projeto, cod_atividade),
    FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
    FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo)
);