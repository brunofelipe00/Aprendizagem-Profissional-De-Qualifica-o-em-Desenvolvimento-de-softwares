/*Criando index e definindo que um cliente realiza uma compra*/
alter table `bd_caso_estudo_vendas`.`tb_compra`
add index `fk_compra_cli_idx`(`compra_cli_cod`asc);
/*Criando a chave estrangeira*/
alter table`bd_caso_estudo_vendas`.`tb_compra`
add constraint `fk_compra_cli`
foreign key (`compra_cli_cod`)
references `bd_caso_estudo_vendas`.`tb_cli`(`cli_cod`)
on delete no action
on update no action;