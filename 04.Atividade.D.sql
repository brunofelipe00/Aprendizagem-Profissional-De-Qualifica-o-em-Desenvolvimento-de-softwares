create table Pagamentos(
id int auto_increment primary key,
id_contrato int,
data_pagamento date not null,
valor decimal(10, 2) not null,
metodo enum('Dinheiro','Cartão de credito','Transferencia') not null,
foreign key (id_contrato) references Contratos(id)
);