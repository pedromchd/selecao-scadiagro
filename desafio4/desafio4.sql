-- SGDB ESCOLHIDO: POSTGRESQL

-- 1.

SELECT
    produtos.descricao AS "Produto",
    COUNT(compras.codigo) AS "Número de Vendas"
FROM produtos
    JOIN compras ON produtos.codigo = compras.codigo_produto
GROUP BY produtos.descricao
ORDER BY
    COUNT(compras.codigo) DESC
FETCH FIRST ROW ONLY;

-- 2

SELECT
    produtos.descricao AS "Produto",
    SUM(produtos.valor) AS "Faturamento"
FROM produtos
    JOIN compras ON produtos.codigo = compras.codigo_produto
GROUP BY produtos.descricao
ORDER BY
    SUM(produtos.valor) DESC
FETCH FIRST ROW ONLY;

-- 3

SELECT
    produtos.marca_fabricante AS "Fabricante",
    SUM(produtos.valor) AS "Faturamento"
FROM produtos
    JOIN compras ON produtos.codigo = compras.codigo_produto
GROUP BY
    produtos.marca_fabricante
ORDER BY
    SUM(produtos.valor) DESC
FETCH FIRST ROW ONLY;

-- 4

SELECT
    clientes.nome AS "Cliente",
    SUM(produtos.valor) AS "Faturamento"
FROM clientes
    JOIN enderecos ON clientes.codigo = enderecos.codigo_cliente
    JOIN compras ON enderecos.codigo = compras.codigo_endereco_entrega
    JOIN produtos ON compras.codigo_produto = produtos.codigo
GROUP BY clientes.nome
ORDER BY
    SUM(produtos.valor) DESC
FETCH FIRST 5 ROWS ONLY;

-- 5

SELECT
    compras.data_compra AS "Data",
    SUM(produtos.valor) AS "Faturamento"
FROM compras
    LEFT JOIN produtos ON compras.codigo_produto = produtos.codigo
GROUP BY compras.data_compra
ORDER BY
    compras.data_compra ASC;

-- 6

SELECT clientes.nome AS "Ganhador(a)"
FROM clientes
    JOIN enderecos ON clientes.codigo = enderecos.codigo_cliente
    JOIN compras ON enderecos.codigo = compras.codigo_endereco_entrega
    JOIN produtos ON compras.codigo_produto = produtos.codigo
WHERE
    compras.data_compra = '2022-11-25'
    AND produtos.marca_fabricante = 'ACME'
GROUP BY clientes.nome ORDER BY SUM(produtos.valor) DESC FETCH FIRST ROW ONLY;

-- 7

