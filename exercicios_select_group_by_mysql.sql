select profissao, count(*) from gafanhotos
group by profissao
order by profissao;

select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

select nome, nacionalidade, count(*) from gafanhotos
where nacionalidade not in ('Brasil')
group by nacionalidade
having count(nacionalidade) > 3;

select avg(altura) from gafanhotos;

select nome, altura, peso from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);

select * from gafanhotos;