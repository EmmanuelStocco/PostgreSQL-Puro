create table publicacao (
  	id serial constraint pk_id_pub primary key,
  	nome varchar(50),
  	dataPub date,
  	idioma varchar(25)
);
  
  create table livros (
    isbn13 char(13) unique,
    tipo_capa varchar (20),
    edicao smallint
) inherits (publicacao);
    
 create table revistas (
   issn char (8),
   numero smallint,
   unique (issn, numero)
) inherits (publicacao);
   
   
  INSERT INTO publicacao(nome, dataPub, idioma)
  VALUES ('Le monde', '20220411','Francês');

Select * FROM publicacao

--essa alteração se reflete nas heradadas
ALTER TABLE publicacao
ADD COLUMN nPaginas smallint;
