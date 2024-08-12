select * 
from `bd_caso_estudo_vendas`.`tb_func`
where func_nome like '%Carlos Silva%';

select compra_cod
from `bd_caso_estudo_vendas`.`tb_prod_comp`
group by compra_cod;

select *
from `bd_caso_estudo_vendas`.`tb_prod`
where prod_vlr between 10 and 25;

select sum(prod_vlr)
from `bd_caso_estudo_vendas`.`tb_prod`;

select avg(prod_vlr)
from `bd_caso_estudo_vendas`.`tb_prod`;

select min(prod_vlr)
from `bd_caso_estudo_vendas`.`tb_prod`;

select max(prod_vlr)
from `bd_caso_estudo_vendas`.`tb_prod`;

select count(*) from `bd_caso_estudo_vendas`.`tb_prod`;



