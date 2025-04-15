-- Questão 10: Projetos com departamento e responsável (usando VIEW)
CREATE OR REPLACE VIEW projeto_responsavel_view AS
SELECT 
    p.nome AS projeto,
    pd.descricao AS departamento_projeto,
    f.nome AS responsavel,
    fd.descricao AS departamento_responsavel
FROM projeto p
JOIN departamento pd ON p.cod_depto = pd.codigo
JOIN funcionario f ON p.cod_responsavel = f.codigo
LEFT JOIN departamento fd ON f.cod_depto = fd.codigo;

SELECT * FROM projeto_responsavel_view;