use bd_caso_estudo_vendas
select cli_cod,cli_nome,func_nome
from `bd_caso_estudo_vendas`.`tb_compra`
inner join `bd_caso_estudo_vendas`.`tb_func`
	on func_cod = compra_func_cod
inner join `bd_caso_estudo_vendas`.`tb_cli`
	on cli_cod = compra_qtd_cod;
