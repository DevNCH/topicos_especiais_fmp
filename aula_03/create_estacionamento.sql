create table cliente(
    cpf integer not null,
    nome varchar(60) not null,
    dtNasc Date not null,
    primary key(cpf)
);

create table modelo(
	codMod integer not null,
	Desc_2 varchar(40) not null,
	primary key(codMod)
);

create table veiculo(
    placa varchar(8) not null,
    Modelo_codMod integer not null,
    Cliente_cpf integer not null,
	cor varchar(20) not null,
    primary key(placa),
    foreign key(codmodelo)references modelo(codmodelo),
    foreign key (cpf)references cliente(cpf)
);

create table patio(
	num integer not null,
	ender varchar(40) not null,
	capacidade integer not null,
	primary key(num)
);

create table estaciona(
	cod integer not null,
	Patio_num integer not null,
	Veiculo_placa varchar(8) not null,
	dtEntrada varchar(10) not null,
	dtSaida varchar(10) not null,
	hsEntrada varchar(10) not null,
	hsSaida varchar(10) not null,
	primary key(cod)
	foreign key(Patio_num) references patio(num),
	foreign key(Veiculo_placa) references veiculo(placa)
);