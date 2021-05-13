create table tipo_documento(
sigla varchar(10) not null ,
nombre_documento varchar(100) not null unique ,
estado varchar(40) not null ,
	constraint pk_sigla primary key (sigla)
);   