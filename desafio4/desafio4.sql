-- Active: 1671395372884@@localhost@5432@desafio4

-- SGDB ESCOLHIDO: POSTGRESQL

-- 1.
SELECT produtos.descricao AS "Produto", COUNT(compras.codigo) AS "Número de Vendas" FROM produtos JOIN compras ON produtos.codigo = compras.codigo_produto GROUP BY "Produto" ORDER BY "Número de Vendas" DESC FETCH FIRST ROW ONLY;

-- 2
SELECT produtos.descricao AS "Produto", SUM(produtos.valor) AS "Faturamento" FROM produtos JOIN compras ON produtos.codigo = compras.codigo_produto GROUP BY "Produto" ORDER BY "Faturamento" DESC FETCH FIRST ROW ONLY;

-- 3
SELECT produtos.marca_fabricante AS "Fabricante", SUM(produtos.valor) AS "Faturamento" FROM produtos JOIN compras ON produtos.codigo = compras.codigo_produto GROUP BY "Fabricante" ORDER BY "Faturamento" DESC FETCH FIRST ROW ONLY;

-- 4
SELECT clientes.nome AS "Cliente", SUM(produtos.valor) AS "Faturamento" FROM clientes JOIN enderecos ON clientes.codigo = enderecos.codigo_cliente JOIN compras ON enderecos.codigo = compras.codigo_endereco_entrega JOIN produtos ON compras.codigo_produto = produtos.codigo GROUP BY "Cliente" ORDER BY "Faturamento" DESC FETCH FIRST ROW ONLY;

-- 5
SELECT compras.data_compra AS "Data", SUM(produtos.valor) AS "Faturamento" FROM compras LEFT JOIN produtos ON compras.codigo_produto = produtos.codigo GROUP BY "Data" ORDER BY "Data" ASC;

-- 6
SELECT clientes.nome AS "Ganhador(a)", SUM(produtos.valor) AS "Valor" FROM clientes JOIN enderecos ON clientes.codigo = enderecos.codigo_cliente JOIN compras ON enderecos.codigo = compras.codigo_endereco_entrega JOIN produtos ON compras.codigo_produto = produtos.codigo WHERE compras.data_compra = '2022-11-25' AND produtos.marca_fabricante = 'ACME' GROUP BY "Ganhador(a)" ORDER BY "Valor" DESC FETCH FIRST ROW ONLY;

-- 7
SELECT "Data", SUM("Faturamento") FROM (SELECT compras.data_compra AS "Data", (CASE WHEN produtos.marca_fabricante = 'Compu Global Hyper Mega Net' AND (CAST (compras.data_compra AS DATE) BETWEEN '2022-11-25' AND '2022-11-26') THEN (SUM(produtos.valor) * 0.7) WHEN produtos.marca_fabricante = 'Maple' AND (CAST (compras.data_compra AS DATE) BETWEEN '2022-11-25' AND '2022-11-30') THEN (SUM(produtos.valor) * 0.9) ELSE SUM(produtos.valor) END) AS "Faturamento" FROM compras LEFT JOIN produtos ON compras.codigo_produto = produtos.codigo GROUP BY compras.data_compra, produtos.marca_fabricante) AS "FatDiario" GROUP BY "Data" ORDER BY "Data" ASC;

--8
SELECT "Cliente", SUM("Faturamento") FROM (SELECT clientes.nome AS "Cliente", (CASE WHEN produtos.marca_fabricante = 'Compu Global Hyper Mega Net' AND (CAST (compras.data_compra AS DATE) BETWEEN '2022-11-25' AND '2022-11-26') THEN (SUM(produtos.valor) * 0.7) WHEN produtos.marca_fabricante = 'Maple' AND (CAST (compras.data_compra AS DATE) BETWEEN '2022-11-25' AND '2022-11-30') THEN (SUM(produtos.valor) * 0.9) ELSE SUM(produtos.valor) END) AS "Faturamento" FROM clientes JOIN enderecos ON clientes.codigo = enderecos.codigo_cliente JOIN compras ON enderecos.codigo = compras.codigo_endereco_entrega JOIN produtos ON compras.codigo_produto = produtos.codigo GROUP BY clientes.nome, produtos.marca_fabricante, compras.data_compra) AS "TopCinco" GROUP BY "Cliente" ORDER BY SUM("Faturamento") DESC FETCH FIRST 5 ROWS ONLY;
