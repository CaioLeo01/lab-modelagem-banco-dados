use bancozero;

CREATE TABLE usuario(
id_usuario int auto_increment primary key,
nome varchar(255) not null,
email varchar(128) not null unique,
dta_cadastro date default(current_date) not null
);