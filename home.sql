-- Criei aqui o banco de dados DDL do projeto

create database LojaPet;

create table tb_credenciais (
    id_credencial serial primary key,
    id_usuario serial unique,
    email varchar not null,
    senha varchar not null,

)

create table tb_usuarios (
    id_usuario serial primary key,
    credencial serial unique,
    nome varchar(50) not null,
    sobrenome varchar(50) not null,
    cpf varchar(11) unique not null,
    data_cadastro timestamp defaut NOW,
    contato serial,
    endereco serial,

    -- Aqui ficam as referências desta tabela com outras (FK)
    foreign key (credencial) references tb_credenciais (id_credencial),
)


