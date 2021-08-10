use SENAI_HROADS_TARDE;
go

insert into tipo_hab(nome_tipo)
values ('Ataque'), ('Defesa'), ('Magia'), ('Cura');
go

insert into classe(nomeClasse)
values ('Bárbaro'), ('Cruzado'), ('Caçadora de Demônios'), ('Monge'), ('Necromante'), ('Feiticeiro'), ('Arcanista');
go

insert into habilidades(IDtipo_hab, nome_hab)
values (1, 'Lança Mortal'), (2, 'Escudo Supremo'), (4, 'Recuperar Vida');
go

insert into kit_classe(IDclasse, IDhabilidade)
values (1,	1), (1, 2), (2,	2), (3, 1), (4, 2), (4, 3), (6, 3);
go

insert into personagem(IDclasse, nome_persona, Cap_mana, Cap_vida, data_att, data_criacao)
values (1, 'DeuBug', 80, 100, '10/08/2021', '19/01/2019'), (4, 'BitBug', 100, 70, '10/08/2021', '17/03/2016'), (7, 'Fer8', 60,	75,	'10/08/2021', '18/03/2018');
go

--Updates

update personagem
set nome_persona = 'Fer7'
where nome_persona = 'Fer8';
go

update classe
set nomeClasse = 'Necromancer'
where nomeClasse = 'Necromante';
go