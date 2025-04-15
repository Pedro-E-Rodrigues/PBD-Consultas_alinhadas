INSERT INTO departamento (codigo, descricao) VALUES 
(1, 'TI'), (2, 'RH'), (3, 'Financeiro'), (4, 'Marketing'), (5, 'Produção');

INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario, cod_depto) VALUES
(1, 'João Silva', 'M', '2000-05-15', 5000.00, 1),
(2, 'Maria Souza', 'F', '2001-08-20', 4500.00, 2),
(3, 'Carlos Oliveira', 'M', '2003-03-10', 4000.00, 3),
(4, 'Ana Santos', 'F', '2003-11-25', 4800.00, 4),
(5, 'Pedro Costa', 'M', '2002-07-30', 3800.00, 5),
(6, 'Lucia Lima', 'F', '2005-02-18', 4200.00, 1),
(7, 'Marcos Santos', 'M', '2004-09-12', 5500.00, 2);

UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 5;

INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
(1, 'Sistema ERP', 'Implementação de ERP', 1, 1, '2023-01-01', '2023-12-31'),
(2, 'Treinamentos', 'Capacitação de equipe', 2, 2, '2023-02-01', '2023-06-30'),
(3, 'Orçamento 2023', 'Planejamento financeiro', 3, 3, '2022-11-01', '2023-01-31'),
(4, 'Campanha Verão', 'Promoções de verão', 4, 4, '2023-09-01', '2023-12-31'),
(5, 'Nova Linha', 'Desenvolvimento de produtos', 5, 5, '2023-03-01', '2024-03-01');

INSERT INTO atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
(1, 'Análise Requisitos', 'Levantamento de necessidades', 1, '2023-01-01', '2023-02-28'),
(2, 'Seleção Instrutores', 'Contratação de trainers', 2, '2023-02-01', '2023-03-15'),
(3, 'Projeção Receitas', 'Estimativa de receitas 2023', 3, '2022-11-01', '2022-12-15'),
(4, 'Criação Materiais', 'Desenvolvimento de peças', 4, '2023-09-01', '2023-10-15'),
(5, 'Pesquisa Mercado', 'Análise de concorrência', 5, '2023-03-01', '2023-05-31'),
(6, 'Testes Sistema', 'Testes do novo ERP', 6, '2023-03-01', '2023-04-30');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1), (1, 6), (2, 2), (3, 3), (4, 4), (5, 5);