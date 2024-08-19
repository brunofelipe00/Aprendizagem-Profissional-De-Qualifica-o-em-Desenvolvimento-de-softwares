-- CRIAÇÃO DAS TABELAS
create database `bd_exercicio`;
use `bd_exercicio`
CREATE TABLE `bd_exercicio`.`tb_funcionario`(
`func_codigo` INT NOT NULL primary KEY,
`func_nome` varchar(60) null,
`func_cpf` varchar(13) null,
`forn_end` varchar(90) null,
`forn_salario` numeric,
`ger_depto_cod` int,
`trb_depto_cod` int,
`proj_cod` int
);

CREATE TABLE `bd_exercicio`.`tb_departamento`(
`depto_codigo` INT NOT NULL primary KEY,
`depto_nome` varchar(60) null,
`local_cod` int
);

CREATE TABLE `bd_exercicio`.`tb_projeto`(
`proj_codigo` INT NOT NULL primary KEY,
`proj_numero` int,
`depto_cod` int,
`local_cod` int
);

CREATE TABLE `bd_exercicio`.`tb_local`(
`local_codigo` INT NOT NULL primary KEY,
`local_desc` varchar(60) null
);