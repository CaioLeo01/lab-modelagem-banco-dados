use bibliotecapessoal;

ALTER TABLE livro 
DROP COLUMN autor,
DROP COLUMN editora,
DROP COLUMN categoria,
DROP COLUMN sinopse;

ALTER TABLE livro 
ADD COLUMN fk_usuario INT,
ADD COLUMN fk_autor INT,
ADD COLUMN fk_editora INT,
ADD COLUMN fk_categoria INT,
ADD COLUMN data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
ADD COLUMN lido BOOLEAN DEFAULT FALSE,
ADD COLUMN sinopse text;



ALTER TABLE livro
ADD CONSTRAINT fk_livro_usuario
FOREIGN KEY (fk_usuario)
REFERENCES usuario(id_usuario)
ON DELETE CASCADE;

ALTER TABLE livro
ADD CONSTRAINT fk_livro_autor
FOREIGN KEY (fk_autor)
REFERENCES autor(id_autor)
ON DELETE RESTRICT;


ALTER TABLE livro
ADD CONSTRAINT fk_livro_editora
FOREIGN KEY (fk_editora)
REFERENCES editora(id_editora)
ON DELETE RESTRICT;


ALTER TABLE livro
ADD CONSTRAINT fk_livro_categoria
FOREIGN KEY (fk_categoria)
REFERENCES categoria(id_categoria)
ON DELETE RESTRICT;
