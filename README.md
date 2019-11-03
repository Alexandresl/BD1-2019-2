SQL Exercicio 1

Banco de dados pedido produto.

cliente(id_cliente,nome,endereco,telefone)
produto(id_produto, nome, preco, quantidade_estoque)
pedido (id_pedido, id_cliente, data_pedido, data_entrega) fk: id_cliente
pedido_produto(id_pedido,id_produto,preco_venda,quantidade) fk: id_pedido, id_produto

Criar o arquivo create.sql (create das tabelas e das sequences).
Criar o arquivo drop (drop das tabelas e das sequences).
Criar o arquivo insert (com o insert das tabelas).
----------------------------------------------------------------------------------------------

SQL Exercicio 2

Consultas para o banco de dados pedido-produto

1. Apresentar o nomes dos produtos em ordem crescente.
2. Apresentar os nomes dos produtos, a quantidade em estoque e o pre�o para os produtos que tem quantidade em estoque superior a 50 ou com pre�o inferior a 10.
3. Apresentar o c�digo do pedido, a data do pedido e o nome do cliente.
4. Apresentar o c�digo do pedido, o c�digo do produto, o nome do produto, o pre�o de venda, ordenar pelo c�digo do pedido.
5. Apresentar os nomes dos produtos que foram pedidos em quantidade superior a 10.
6. Apresentar o c�digo do pedido, a data, o nome do cliente para os pedidos do produto de c�digo 1.
7. Apresentar o c�digo do pedido, a data, o nome do cliente para os pedidos do produto mesa.
8. Apresentar o c�digo do pedido, o nome do cliente e a data do pedido para os pedidos que ainda n�o foram entregues.
9. Apresentar o c�digo do pedido, nome do cliente, nome do produto, total produto (quantidade*pre�o do produto). Ordenar pelo c�digo do pedido e pelo nome do produto.