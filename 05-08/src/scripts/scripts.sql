create table agendamentos (
    id_agendamento integer primary key,
    id_cliente integer not null,
    id_servico integer not null,
    id_barbeiro integer not null,
    data_dia date not null,
	hora_hr time not null,
	    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
		FOREIGN KEY (id_barbeiro) REFERENCES barbeiros(id_barbeiro),
		FOREIGN KEY (id_servico) REFERENCES servicos(id_servico)
);

create table servicos (
	id_servico integer primary key,
	corte_valor numeric (10,2) not null,
	barba_valor numeric (10,2) not null,
	skincare_valor numeric (10,2) not null
)

create table clientes (
	id_cliente integer not null primary key,
	nome_cliente text not null,
	email_cliente varchar(20) not null,
	telefone_cliente CHARACTER VARYING not null
)

create table barbeiros (
	id_barbeiro integer primary key,
	nome_barbeiro text not null,
	especialidade_barbeiro text not null
)