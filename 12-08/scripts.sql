select * from atividades
select * from usuarios

create table usuarios (
	id_usuario int primary key,
	nome_usuario varchar(20) not null,
	email_usuario CHARACTER VARYING not null,
	foto_usuario character varying not null
)

create table atividades (
	id_ativd int primary key,
	id_usuario varchar(20) not null,
	tipo_ativd text not null,
	duracaoMin_ativd numeric(10,2) not null,
	data_ativd date not null,
	hora_ativd time not null
)

-- precisa fazer os INSERT

-- !