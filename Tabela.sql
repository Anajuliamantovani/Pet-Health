create table endereço (
    id
);

create table tb_id_usuarios (
    id serial primary key,
   -- id_credencial (fk)
   -- endereço (fk)
    --contato (fk)
    nome varchar (50) not null,
    sobre nome varchar (50) not null,
    cpf numeric (111-222-333-44) not null,
    cadastro varchar (02/02/2000) not null,
);
