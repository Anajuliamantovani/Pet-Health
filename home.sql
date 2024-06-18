-- Criei aqui o banco de dados DDL do projeto

create database LojaPet;

create table tb_enderecos (
    id_endereco serial primary key,
    cep varchar(9) not null,
    rua varchar(100) not null,
    bairro varchar(100), not null,
    cidade varchar(50) not null,
    estado varchar(50) not null,
    numero varchar(10),
    complemento varchar(100),
);

create table tb_credenciais (
    id_credencial serial primary key,
    id_usuario serial unique,
    email varchar not null,
<<<<<<< HEAD
    senha varchar not null,

    foreign key (id_usuario) references tb_usuário(id_usuario)
);

create table tb_contato (
    id_contato serial primary key
    celular varchar (14) unique not null
    email int not null
    
    foreign key (email) references tb_credenciais(email)
=======
    senha varchar not null
>>>>>>> 3897fc98e8147e50edb413ea53e3d71f632e0374
);

create table tb_usuarios (
    id_usuario serial primary key,
    credencial serial unique,
    nome varchar(50) not null,
    sobrenome varchar(50) not null,
    cpf varchar(11) unique not null,
    data_cadastro timestamp defaut NOW,
    contato int,
    endereco int,

    -- Aqui ficam as referências desta tabela com outras (FK)
<<<<<<< HEAD
    foreign key (credencial) references tb_credenciais (id_credencial)
)
=======
    foreign key (credencial) references tb_credenciais (id_credencial),
);
>>>>>>> 3897fc98e8147e50edb413ea53e3d71f632e0374


