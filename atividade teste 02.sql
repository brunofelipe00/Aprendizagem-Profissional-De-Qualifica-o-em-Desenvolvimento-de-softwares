-- INDICE E FK FUNCIONARIO /GERENCIA/ DEPARTAMENTO
alter table `bd_exercicio`.`tb_funcionario`
add index `fk_ger_depto_cod_idx` (`ger_depto_cod` ASC);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_ger_depto_cod`
foreign key (`ger_depto_cod`)
references `bd_exercicio`.`tb_departamento`(`depto_codigo`);

-- INDICE E FK FUNCIONARIO/TRABALHA_PARA/DEPARTAMENTO
alter table `bd_exercicio`.`tb_funcionario`
add index `fk_trab_depto_cod_idx` (`trb_depto_cod` ASC);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_trab_depto_cod`
foreign key (`trb_depto_cod`)
references `bd_exercicio`.`tb_departamento` (`depto_codigo`);

-- INDICE E FK FUNCIONARIO /TRABALHA_NO/ PROJETO
alter table `bd_exercicio`.`tb_funcionario`
add index `fk_proj_cod_idx` (`proj_cod` ASC);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_proj_cod`
foreign key (`proj_cod`)
references `bd_exercicio`.`tb_projeto` (`proj_codigo`);

-- INDICE E FK DEPARTAMENTO LOCAL / ATRIBUTO MULTIVALORADO
alter table `bd_exercicio`.`tb_departamento`
add index `fk_local_depto_cod_idx` (`local_cod` asc);

alter table `bd_exercicio`.`tb_departamento`
add constraint `fk_depto_local_cod`
foreign key (`local_cod`)
references `bd_exercicio`.`tb_local`(`local_codigo`);

-- INDICE E FK PROJETO LOCAL / ATRIBUIDO MULTIVALORADA
alter table `bd_exercicio`.`tb_projeto`
add index `fk_proj_local_cod_idx` (`local_cod` asc);

alter table `bd_exercicio`.`tb_projeto`
add constraint `fk_proj_local_cod`
foreign key (`local_cod`)
references `bd_exercicio`.`tb_local` (`local_codigo`);





