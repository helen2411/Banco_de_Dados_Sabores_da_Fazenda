create database Sabores_da_Fazenda;
use Sabores_da_Fazenda;


-- Tabela Clientes - Deverá ter um Banco de Dados Próprio
create Table Clientes(
	id_cliente int not null primary key auto_increment,
    nome_cliente Varchar(255),
    cpf int(11),
    email Varchar(255),
    endereco Varchar (255)
);

-- Telefone Clientes
create Table Telefone_Clientes(
	id_telefone int not null primary key auto_increment,
    telefone Varchar(15),
    id_cliente int not null,
	Foreign key (id_cliente) references Clientes(id_cliente)
);

-- Tabela Fornecedores - Será incluída no banco de Dados de Matéria Prima que será criado
create Table Fornecedores(
	id_fornecedor int not null primary key auto_increment,
    nome_fornecedor Varchar(255),
    insumos Varchar(255)
);

-- Telefone Fornecedor 
create Table Telefone_Fornecedor(
	id_telefone int not null primary key auto_increment,
    telefone Varchar(15),
    id_fornecedor int not null,
	Foreign key (id_fornecedor) references Fornecedores(id_fornecedor)
);

-- Tabela Produtos - Deverá ter um banco de Dados específicifo para Queijos e Doces 
create Table Produtos(
	id_produto int not null primary key auto_increment,
    nome_queijo Varchar(255),
    data_producao date,
    data_validade date,
	preco Decimal(6.2),
    id_fornecedor int not null,
    Foreign key (id_fornecedor) references Fornecedores(id_fornecedor)
);

-- Tabela Funcionários - Deverá ter um banco de Dados específico 
create Table Funcionarios(
	id_funcionario int not null primary key auto_increment,
    nome_funcionario Varchar(255),
    cargo Varchar(255),
	data_contratacao date
);

-- Tabela Produção- Estará alinhada a produtos 
create Table Producao(
	id_producao int not null primary key auto_increment,
    data_producao date,
    id_produto int not null,
    Foreign key (id_produto) references Produtos(id_produto),
	quantidade_produzida decimal (6.3),
    id_funcionario int not null,
    Foreign key (id_funcionario) references Funcionarios(id_funcionario)
);

-- Tabela de Vendas será vinculada a de clientes
create Table Vendas(
	id_vendas int not null primary key auto_increment,
    data_venda date, 
	quantidade_vendida Decimal (6.3),
    valor_total Decimal (6.3),
	id_produto int not null,
    Foreign key (id_produto) references Produtos(id_produto),
    id_cliente int not null,
    Foreign key (id_cliente) references Clientes(id_cliente)
);

insert into Clientes(nome_cliente,cpf,email,endereco) values("Amanda", 09987654321,"amanda12@gmail.com","QNP 4 Conjuto 3 Casa 2");
insert into Clientes(nome_cliente,cpf,email,endereco) values("Paulo", 04487654321,"paulo33@gmail.com","QNM 23 Conjuto 6 Casa 4");

insert into Telefone_Clientes(telefone,id_cliente) values("61 9 87654321", 1);
insert into Telefone_Clientes(telefone,id_cliente) values("61 9 99654321", 2);

insert into Fornecedores(nome_fornecedor,insumos) values("Anderson","Fertilizantes");
insert into Fornecedores(nome_fornecedor,insumos)values("Vitória", "Ração para Gado");

insert into Telefone_Fornecedor(telefone,id_fornecedor) values("61 9 94654321",1);
insert into Telefone_Fornecedor(telefone,id_fornecedor) values("61 9 93654321",2);

insert into Produtos(nome_queijo,data_producao,data_validade,preco) values("Queijo Minas","2025-02-21");
insert into Produtos(nome_queijo,data_producao,data_validade,preco) values("Queijo Prato","2025-02-21");

insert into Funcionarios(nome_funcionario,cargo,data_contratacao) values("Rodrigo", "Pecuarista","2022-02-21");
insert into Funcionarios(nome_funcionario,cargo,data_contratacao) values("Eloíse", "Técnica em Frulticultura","2022-02-21");

insert into Producao(data_producao,id_produto,quantidade_produzida,id_funcionario) values();
insert into Producao(data_producao,id_produto,quantidade_produzida,id_funcionario) values();

insert into Vendas(data_venda,quantidade_vendida,valor_total,id_produto,id_cliente) values();
insert into Vendas(data_venda,quantidade_vendida,valor_total,id_produto,id_cliente) values();







