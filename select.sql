/*Consultando registros selecionando colunas*/
select * from tb_func
	inner join tb_depto
    on depto_cod = func_depto;