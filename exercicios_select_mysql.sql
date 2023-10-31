select nome from gafanhotos
where sexo = 'F' order by nome;

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

select nome, profissao from gafanhotos
where sexo = 'M' and profissao = 'Programador'
order by nome;

select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

select nome, nacionalidade from gafanhotos
where nome like '%silva%' and nacionalidade not in ('Brasil') and peso < 100;

select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade not in ('Brasil') and nascimento between '1990-01-01' and '2000-12-31';

select count(altura) from gafanhotos
where sexo = 'F' and altura > 1.90;

select * from gafanhotos;


