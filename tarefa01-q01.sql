-- Questão 1: Funcionários com salários superiores aos do departamento 2
SELECT f.nome, f.salario
FROM funcionario f
WHERE f.salario > ALL (
    SELECT salario
    FROM funcionario
    WHERE cod_depto = 2
);