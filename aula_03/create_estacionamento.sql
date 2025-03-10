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
	foreign key(Modelo_codMod) references modelo(codMod),
	foreign key(Cliente_cpf) references cliente(cpf)
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
	primary key(cod),
	foreign key(Patio_num) references patio(num),
	foreign key(Veiculo_placa) references veiculo(placa)
);

insert into cliente values
(12345678, 'João Silva', '1985-04-15'),
(23456789, 'Maria Oliveira', '1990-02-25'),
(34567890, 'Carlos Souza', '1982-11-03'),
(45678901, 'Ana Pereira', '1995-07-20'),
(56789012, 'Paulo Costa', '1988-03-12'),
(67890123, 'Fernanda Santos', '1992-06-17'),
(78901234, 'Ricardo Almeida', '1981-09-08'),
(89012345, 'Camila Rocha', '1994-12-05'),
(90123456, 'José Lima', '1979-01-29'),
(11223344, 'Juliana Martins', '1987-10-22'),
(12398765, 'Lucas Pereira', '1993-08-15'),
(23487654, 'Juliana Costa', '1987-11-02'),
(34576543, 'Eduardo Almeida', '1995-06-19'),
(45665432, 'Carla Rodrigues', '1983-02-28'),
(56754321, 'Roberto Martins', '1979-10-05');

insert into modelo values
(101, 'Sedan'),
(102, 'Hatchback'),
(103, 'Crossover'),
(104, 'SUV'),
(105, 'Picape'),
(106, 'Coupé'),
(107, 'Conversível'),
(108, 'Minivan'),
(109, 'Esportivo'),
(110, 'Furgão'),
(111, 'Furgão'),
(112, 'Híbrido'),
(113, 'Elétrico'),
(114, 'SUV Compacto'),
(115, 'Van');

insert into veiculo values
('ABC1234', 101, 12345678, 'Preto'),
('XYZ5678', 102, 23456789, 'Prata'),
('LMN4321', 103, 34567890, 'Vermelho'),
('OPQ8765', 104, 45678901, 'Azul'),
('RST1357', 105, 56789012, 'Branco'),
('UVW2468', 106, 67890123, 'Cinza'),
('DEF9876', 107, 78901234, 'Verde'),
('GHI5432', 108, 89012345, 'Amarelo'),
('JKL8642', 109, 90123456, 'Roxo'),
('MNO7531', 110, 11223344, 'Laranja');
('QWE1234', 111, 12398765, 'Preto'),
('RTY5678', 112, 23487654, 'Branco'),
('UJI4321', 113, 34576543, 'Vermelho'),
('POL8765', 114, 45665432, 'Azul'),
('MNB1357', 115, 56754321, 'Verde');

insert into patio values
(1, 'Rua das Flores, 123', 50),
(2, 'Avenida Brasil, 456', 100),
(3, 'Praça Central, 789', 75),
(4, 'Rua do Comércio, 101', 30),
(5, 'Avenida das Palmeiras, 202', 120),
(6, 'Rua 7 de Setembro, 303', 60),
(7, 'Rua do Sol, 404', 80),
(8, 'Avenida Rio de Janeiro, 505', 150),
(9, 'Rua dos Lírios, 606', 40),
(10, 'Avenida Paulista, 707', 200),
(11, 'Rua dos Cedros, 100', 60),
(12, 'Avenida São Paulo, 250', 110),
(13, 'Rua da Paz, 150', 90),
(14, 'Avenida dos Coqueiros, 75', 140),
(15, 'Rua do Bosque, 80', 200);

insert into estaciona values
(1, 1, 'ABC1234', '2025-03-01', '2025-03-01', '08:00', '10:00'),
(2, 2, 'XYZ5678', '2025-03-02', '2025-03-02', '09:30', '11:30'),
(3, 3, 'LMN4321', '2025-03-03', '2025-03-03', '10:00', '12:00'),
(4, 4, 'OPQ8765', '2025-03-04', '2025-03-04', '11:00', '13:00'),
(5, 5, 'RST1357', '2025-03-05', '2025-03-05', '12:30', '14:30'),
(6, 6, 'UVW2468', '2025-03-06', '2025-03-06', '13:00', '15:00'),
(7, 7, 'DEF9876', '2025-03-07', '2025-03-07', '14:00', '16:00'),
(8, 8, 'GHI5432', '2025-03-08', '2025-03-08', '15:30', '17:30'),
(9, 9, 'JKL8642', '2025-03-09', '2025-03-09', '16:00', '18:00'),
(10, 10, 'MNO7531', '2025-03-10', '2025-03-10', '17:00', '19:00'),
(11, 1, 'QWE1234', '2025-03-11', '2025-03-11', '08:30', '10:30'),
(12, 2, 'RTY5678', '2025-03-12', '2025-03-12', '09:00', '11:00'),
(13, 3, 'UJI4321', '2025-03-13', '2025-03-13', '10:15', '12:15'),
(14, 4, 'POL8765', '2025-03-14', '2025-03-14', '11:45', '13:45'),
(15, 5, 'MNB1357', '2025-03-15', '2025-03-15', '13:00', '15:00');
