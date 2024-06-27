/* Implementação de Banco de dados usando MySQL */
/*01. Criando Arquivo/Banco de Dados*/
create database empresa;
/*02.criando arquivo*/
use empresa;
/*03.criando tabela*/
create table produto(
	codigo varchar(4),
    descricao varchar(100),
    valor varchar(100)
);
/*04.detalha/exibe a estrutura da tabela*/
describe produto;
/*05.consulta todos os registros da tabela*/
select * from produto