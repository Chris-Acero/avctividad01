create table Rol(
 name varchar(50) not null,
 primary key (name)
);

create table sistem_user(
	login varchar (50) not null,
	password varchar (60) not null,
	email varchar (254) not null,
	activated serial not null,
	lang_key varchar (6) not null, 
	image_url varchar (256) null,
	activation_key varchar (20) null,
	reset_key varchar (20) null,
	reset_date timestamp null,
	constraint pk_sistem_user primary key (login),
	constraint uc_sistem_user unique (email)
);

create table user_authority(
	name_rol  varchar (50) not null,
	login varchar (50) not null,
	constraint pk_user_authority primary key (name_rol,login),
	constraint fk_rol foreign key (name_rol) references rol (name),
	constraint fk_user foreign key (login) references sistem_user (login)
	
);



