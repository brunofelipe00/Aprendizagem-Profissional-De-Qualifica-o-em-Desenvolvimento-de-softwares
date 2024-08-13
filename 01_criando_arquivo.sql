/* Implementação de Banco De Dados com MySQL*/
/* 01. Criando Arquivo_Bancos De Dados */
create database `bd_caso_estudo_vendas`
/* 02. Criando tabela  */
create table `bd_caso_estudo_vendas`.`tb_forn`(
	`forn_cod` int not null,
    `forn_nome` varchar(60) null,
    `forn_tel` varchar(13) null,
    primary key(`forn_cod`)
);
