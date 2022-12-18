DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS enderecos;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS compras;

create table clientes (
	codigo integer not null,
	nome varchar(250),
	data_nascimento date,
	email varchar(250)
);

insert into clientes (codigo, nome, data_nascimento, email) values (1, 'Marcos César Henrique Nogueira', '1970-08-25' , 'marcos_cesar_nogueira@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (2,'Leandro André Martins','1994-11-18','leandroandremartins@scadi.net.br');
insert into clientes (codigo, nome, data_nascimento, email) values (3,'Evelyn Gabriela Pires','1983-12-06','evelyn.gabriela.pires@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (4,'Jorge Julio Nicolas Souza','1961-10-07','jorge_souza@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (5,'Rayssa Priscila Catarina Figueiredo','1966-09-19','rayssa_priscila_figueiredo@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (6,'Henrique Raul Dias','1945-09-19','henrique.raul.dias@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (7,'Cristiane Maria Adriana da Luz','1971-05-25','cristiane_maria_daluz@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (8,'Ayla Mirella Amanda Santos','1995-07-18','ayla.mirella.santos@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (9,'Pietro Renan Rezende','1985-05-08','pietro.renan.rezende@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (10,'Tânia Benedita Ferreira','1959-09-04','tania.benedita.ferreira@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (11,'Luzia Lavínia Gabriela Gonçalves','1975-05-10','luzia_goncalves@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (12,'Marcos Vinicius Yuri Vicente Gonçalves','1997-10-08','marcos_goncalves@scadi.se');
insert into clientes (codigo, nome, data_nascimento, email) values (13,'Débora Beatriz Nicole Martins','1964-05-16','deborabeatrizmartins@scadiagro.com.br');
insert into clientes (codigo, nome, data_nascimento, email) values (14,'Sophia Lúcia Assis','1988-05-20','sophia_assis@scadi.com');
insert into clientes (codigo, nome, data_nascimento, email) values (15,'Alícia Isabelly Sophia Pires','1992-05-06','alicia-pires94@scadiagro.com.br');

create table enderecos (
	codigo integer not null,
	codigo_cliente integer,
	cep char(8),
	logradouro varchar(250),
	bairro varchar(250),
	cidade varchar(250),
	estado char(2)
);

insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (1,1,'75520250','Avenida São Paulo','Setor Nossa Senhora da Saúde','Itumbiara','GO');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (2,2,'65095237','Rua Santa Rita','Tibiri','São Luís','MA');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (3,3,'72915081','Quadra 50','Jardim Brasília','Águas Lindas de Goiás','GO');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (4,3,'79081681','Rua do Marmelo','Loteamento Alto da Boa Vista','Campo Grande','MS');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (5,4,'64075580','Rua Sete','Beira Rio','Teresina','PI');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (6,5,'68744392','Vila Adilton','Imperador','Castanhal','PA');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (7,6,'50100350','Rua Francisco Jacinto','Santo Amaro','Recife','PE');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (8,7,'79110903','Avenida dos Crisântemos','Lar do Trabalhador','Campo Grande','MS');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (9,7,'21850090','Rua Hélio Luiz Navarro','Bangu','Rio de Janeiro','RJ');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (10,7,'04945110','Praça José Domingos Martins','Parque do Lago','São Paulo','SP');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (11,8,'75800522','Avenida Benjamin Constant','Setor Central - Parte Baixa','Jataí','GO');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (12,8,'57071838','Rua Grécia','Clima Bom','Maceió','AL');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (13,10,'71540072','Quadra SMLN ML','Setor de Mansões do Lago Norte','Brasília','DF');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (14,11,'29182619','Rua Equador','Marbella','Serra','ES');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (15,12,'69901543','Travessa Edson Cadaxo','São Francisco','Rio Branco','AC');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (16,12,'58064290','Rua Nayde de Novais Guimarães','Valentina de Figueiredo','João Pessoa','PB');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (17,13,'74990320','Avenida Luiz Carlos Pimenta Neto','Rosa dos Ventos','Aparecida de Goiânia','GO');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (18,14,'77018482','Avenida LO','Plano Diretor Sul','Palmas','TO');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (19,15,'66820773','Quadra Vinte e Quatro','Tenoné','Belém','PA');
insert into enderecos (codigo, codigo_cliente, cep, logradouro, bairro, cidade, estado) values (20,15,'76912663','Rua Camaçari','Jorge Teixeira','Ji-Paraná','RO');

create table produtos (
	codigo integer not null,
	descricao varchar(250),
	marca_fabricante varchar(250),
	valor numeric(10,2)
);

insert into produtos (codigo, descricao, marca_fabricante, valor) values (1,'Bigorna','ACME',269.99);
insert into produtos (codigo, descricao, marca_fabricante, valor) values (2,'Tomacco','Compu Global Hyper Mega Net',59.99);
insert into produtos (codigo, descricao, marca_fabricante, valor) values (3,'Ma Pod','Maple',475.29);
insert into produtos (codigo, descricao, marca_fabricante, valor) values (4,'TNT','ACME',2.5);
insert into produtos (codigo, descricao, marca_fabricante, valor) values (5,'TV 7D','Compu Global Hyper Mega Net',1290.26);
insert into produtos (codigo, descricao, marca_fabricante, valor) values (6,'Bro-Gurt','Psy CO',24.21);
insert into produtos (codigo, descricao, marca_fabricante, valor) values (7,'Sabre de luz','ACME',388.9);
insert into produtos (codigo, descricao, marca_fabricante, valor) values (8,'Ma Fone','Maple',3848.77);

create table compras (
	codigo integer not null,
	data_compra date,
	codigo_produto integer,
	codigo_endereco_entrega integer
);

insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (1,'2022-11-25',2,16);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (2,'2022-11-25',6,3);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (3,'2022-11-26',8,9);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (4,'2022-11-25',2,1);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (5,'2022-11-26',4,1);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (6,'2022-11-27',1,9);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (7,'2022-11-25',5,15);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (8,'2022-11-26',1,12);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (9,'2022-11-25',6,12);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (10,'2022-11-26',4,13);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (11,'2022-11-27',1,11);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (12,'2022-11-25',2,12);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (13,'2022-11-26',2,11);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (14,'2022-11-25',3,2);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (15,'2022-11-26',1,4);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (16,'2022-11-27',3,5);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (17,'2022-11-25',6,3);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (18,'2022-11-26',2,16);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (19,'2022-11-25',3,9);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (20,'2022-11-26',1,8);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (21,'2022-11-27',1,19);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (22,'2022-11-24',5,10);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (23,'2022-11-25',6,5);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (24,'2022-11-26',3,14);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (25,'2022-11-25',6,7);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (26,'2022-11-26',2,2);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (27,'2022-11-27',2,6);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (28,'2022-11-25',3,8);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (29,'2022-11-24',7,12);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (30,'2022-11-25',8,15);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (31,'2022-11-26',1,11);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (32,'2022-11-25',5,4);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (33,'2022-11-26',3,11);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (34,'2022-11-27',7,15);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (35,'2022-11-25',4,9);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (36,'2022-11-24',6,7);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (37,'2022-11-30',3,16);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (38,'2022-11-26',5,1);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (39,'2022-11-27',1,5);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (40,'2022-11-25',8,16);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (41,'2022-11-24',2,3);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (42,'2022-11-25',4,13);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (43,'2022-11-26',7,7);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (44,'2022-11-27',1,3);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (45,'2022-11-25',5,3);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (46,'2022-11-24',2,2);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (47,'2022-11-30',6,16);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (48,'2022-11-26',4,2);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (49,'2022-11-27',2,6);
insert into compras (codigo, data_compra, codigo_produto, codigo_endereco_entrega) values (50,'2022-11-25',2,17);
