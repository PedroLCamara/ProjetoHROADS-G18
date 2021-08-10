use SENAI_HROADS_TARDE;
go

--Selecionar todos os personagens 
select * from personagem;
go

--Selecionar todas as classes
select * from classe;
go

--Selecionar somento o nome das classes
select nomeClasse from classe;
go

--Selecionar todas as habilidades
select * from habilidades;
go

--Realizar a contagem de quantas habilidades estão cadastradas
select count(Distinct habilidades.IDhabilidade) as 'Contagem de habilidades' from habilidades;
go

--Selecionar somente os ids das habilidades, classificando-os por ordem crescente
select IDhabilidade from habilidades
order by IDhabilidade ASC;
go

--Selecionar todos os tipos de habilidade
select * from tipo_hab;
go

--Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte
select * from habilidades
left join tipo_hab
on habilidades.IDtipo_hab = tipo_hab.IDtipo_hab;
go

--Selecionar todos os personagens e suas respectivas classes
select * from personagem
left join classe
on personagem.IDclasse = classe.IDclasse;
go

--Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondencia com personagens)
select * from personagem
full outer join classe
on personagem.IDclasse = classe.IDclasse;
go

--Selecionar todas as classes e suas respectivas habilidades
select classe.IDclasse, nomeClasse, habilidades.IDhabilidade, nome_hab from classe 
left join kit_classe
on kit_classe.IDclasse = classe.IDclasse
left join habilidades
on kit_classe.IDhabilidade = habilidades.IDhabilidade;
go

--Selecionar todas as habilidades e suas classes (somente as que possuam correspondência)
select habilidades.IDhabilidade, nome_hab, classe.IDclasse, nomeClasse from habilidades
left join kit_classe
on kit_classe.IDhabilidade = habilidades.IDhabilidade
left join classe
on kit_classe.IDclasse = classe.IDclasse;
go

--Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência)
select habilidades.IDhabilidade, nome_hab, classe.IDclasse, nomeClasse from habilidades
left join kit_classe
on kit_classe.IDhabilidade = habilidades.IDhabilidade
full outer join classe
on kit_classe.IDclasse = classe.IDclasse;
go