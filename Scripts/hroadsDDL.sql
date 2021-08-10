CREATE DATABASE SENAI_HROADS_TARDE;
GO

USE SENAI_HROADS_TARDE;
GO



create table classe (
IDclasse tinyint primary key identity(1,1),
nomeClasse VARCHAR(30)
);
GO

create table personagem (
IDpersonagem tinyint primary key identity(1,1),
IDclasse tinyint foreign key references classe(IDclasse),
nome_persona VARCHAR(20) NOT NULL UNIQUE,
Cap_vida tinyint NOT NULL,
Cap_mana tinyint NOT NULL,
data_criacao date NOT NULL,
data_att date NOT NULL,
);
GO

create table tipo_hab (
IDtipo_hab tinyint primary key identity(1,1),
nome_tipo VARCHAR (30) NOT NULL,
);
GO

create table habilidades (
IDhabilidade tinyint primary key identity(1,1),
IDtipo_hab tinyint foreign key references tipo_hab(IDtipo_hab),
nome_hab varchar (30) NOT NULL
);
GO

create table kit_classe (
IDkit_classe smallint primary key identity(1,1),
IDclasse tinyint foreign key references classe(IDclasse),
IDhabilidade tinyint foreign key references habilidades(IDhabilidade)
);
GO
