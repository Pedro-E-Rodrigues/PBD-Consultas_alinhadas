-- Questão 6: Funcionários com departamentos (incluindo sem departamento)
SELECT f.nome, f.salario, COALESCE(d.descricao, 'Sem departamento') AS departamento
FROM funcionario f
LEFT JOIN departamento d ON f.cod_depto = d.codigo;