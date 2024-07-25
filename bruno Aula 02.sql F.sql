/*Criando index e definindo que um produto é definido por um fornecedor*/
alter table `bd_caso_estudo_vendas`.`tb_prod`
add index `fk_prod_forn_idx`(`prod_forn_cod` asc);
/*Criando chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_prod`
add constraint `fk_prod_forn`
foreign key (`forn_prod_cod`)
references `bd_caso_estudo_vendas`.`tb_forn` (`forn_cod`)
on delete no action
on update no action;
/*Criando index e definindo que cliente possui muitos telefone*/
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add index `fk_cli_tel_idx` (`tel_cli_cod` asc);
/*Adicionando chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add constraint `fk_cli_tel`
foreign key (`tel_cli_cod`)
references `bd_caso_estudo_vendas`.`tb_cli` (`cli_cod`)
on delete no action
on update no action;