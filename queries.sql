-- Saldo por cliente
SELECT 
    c.Nome,
    SUM(CASE WHEN t.Tipo = 'Entrada' THEN t.Valor ELSE -t.Valor END) AS SaldoFinal
FROM Clientes c
JOIN Contas co ON c.Id = co.ClienteId
JOIN Transacoes t ON co.Id = t.ContaId
GROUP BY c.Nome;

-- Total de entradas vs saídas
SELECT 
    Tipo,
    SUM(Valor) AS Total
FROM Transacoes
GROUP BY Tipo;

-- Clientes com maior movimentação
SELECT 
    c.Nome,
    SUM(t.Valor) AS MovimentacaoTotal
FROM Clientes c
JOIN Contas co ON c.Id = co.ClienteId
JOIN Transacoes t ON co.Id = t.ContaId
GROUP BY c.Nome
ORDER BY MovimentacaoTotal DESC;
