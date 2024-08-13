/*iniciando uma transação*/
start transaction;

-- a) inserindo clientes
insert into `bd_caso_estudo_vendas`.`tb_cli` (cli_cod,cli_nome,cli_cpf,cli_end_rua,cli_end_num,cli_end_bairro,cli_end_cep)
values (102,'Cliente DOIS','12112112199','Rua Teste','199','Bairro Teste','1219222');

-- b) inserindo compra
insert into `bd_caso_estudo_vendas`.`tb_compra`(compra_cod,compra_cli_cod,compra_func_cod,compra_qtd_cod)
values (26,2,1,2);

-- c) inserindo os produtos
insert into `bd_caso_estudo_vendas`.`tb_prod`(prod_cod,prod_forn_cod,prod_desc,prod_vlr)
values(27,1,'quatro',20);
insert into `bd_caso_estudo_vendas`.`tb_prod`(prod_cod,prod_forn_cod,prod_desc,prod_vlr)
values(27,1,'Cinco',30);

-- d) numero da venda inserida = 2

-- e) Atualização da tabela produtos da venda, Inserindo produtos associados a venda
insert into `bd_caso_estudo_vendas`.`tb_prod_comp`(prod_cod,compra_cod)
values(4,2);
insert into `bd_caso_estudo_vendas`.`tb_prod_comp`(prod_cod,compra_cod)
values(4,2);
commit;
