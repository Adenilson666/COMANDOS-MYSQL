create table if not exists teste (
id int, 
nome varchar(30), 
idade int
);

insert into teste(id, nome, idade) 
value('001', 'Denilson', '21'), ('002', 'Sarah', '20'), ('003', 'Robert', '20');

select * from teste;

drop table if exists teste;