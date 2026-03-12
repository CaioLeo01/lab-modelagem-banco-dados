use bancozero;

CREATE TABLE livro(
id_livro int auto_increment primary key,
titulo varchar(255) not null ,
sinopse text not null,
autor varchar(128) not null not null,
editora varchar(128) not null not null,
categoria varchar(128) not null,
ano_publicacao year not null
);