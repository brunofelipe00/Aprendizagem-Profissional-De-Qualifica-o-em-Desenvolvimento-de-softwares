/*01. Criando Banco De Dados*/
create database autovialocadora;
/*Criando Tabelas*/
create table Marcas(
	id int auto_increment primary key,
    nome varchar(50) not null unique
);
create table Modelos(
	id int auto_increment primary key,
    nome varchar(50) not null,
    id_Marca int,
    foreign key (id_marca) references Marcas(id)
);
create table Veiculos(
	id int auto_increment primary key,
    placa varchar(10) not null unique,
    ano int not null,
    cor varchar(20),
    id_modelo int,
    status ENUM('Disponivel','Locado','Em Manutenção') default'Disponivel',
    foreign key (id_modelo) references Modelos(id)
);
create table clientes(
	id int auto_increment primary key,
	nome varchar (100) not null,
    cpf varchar(14) not null unique,
    telefone varchar(15),
    endereco varchar(255)
);
create table Contratos(
id int auto_increment primary key,
id_clientes int,
id_veiculo int,
data_inicio date not null,
dat_fim date,
valor_total decimal(10, 2),
foreign key (id_clientes)  references Clientes(id),
foreign key (id_veiculo)  references Veiculos(id)
);