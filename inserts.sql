INSERT INTO Clientes (Nome, Cidade) VALUES
('Carlos Silva', 'São Paulo'),
('Ana Souza', 'Rio de Janeiro');

INSERT INTO Contas (ClienteId, Saldo) VALUES
(1, 5000),
(2, 3000);

INSERT INTO Transacoes (ContaId, Tipo, Valor, DataTransacao) VALUES
(1, 'Entrada', 2000, '2026-04-01'),
(1, 'Saida', 500, '2026-04-02'),
(2, 'Entrada', 1500, '2026-04-01'),
(2, 'Saida', 700, '2026-04-03');
