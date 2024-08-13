-- Definir o delimitador de comandos para $$, para que o MySql saiba onde começa e termina o gatilho
DELIMITER $$
-- Criar o gatilho com o nome trg_atualiza_qtd_compra
CREATE TRIGGER trg_atualiza_qtd_compra
-- Especificar que o gatilho deve ser acionado apos a inserção de um novo registro na tabela tb_prod_comp
AFTER  INSERT ON tb_prod_comp
-- Especificador que o gatilho deve ser acionado para que cada linha inserida 
FOR EACH ROW
-- Iniciar o bloco de codigo do gatilho
BEGIN 
-- Atulizar o campo compra_qtd_cod da tabela tb_compra
UPDATE tb_compra
-- Aumentar o valor do compra_qtd_cod em 1
SET compra_qtd_cod = compra_qtd_cod + 1
-- Especificar  a condição para atualizar apenas a linha correspodente ao codigo de compra inserida 
WHERE compra_cod = NEW.compra_cod;
-- Terminar o bloco de codigo do gatilho
END$$
