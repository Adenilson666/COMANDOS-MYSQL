select nome from gafanhotos -- UMA LISTA COM O NOME DE TODAS AS GAFANHOTAS
where sexo = 'F' order by nome;

select * from gafanhotos -- UMA LISTA COM OS DADOS DE TODOS AQUELES QUE NASCERAM ENTRE 01/JAN/2000 E 31/DEZ/2015
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

select nome, profissao from gafanhotos -- UMA LISTA COM O NOME DE TODOS OS HOMENS QUE TRABALHAM COMO PROGRAMADORES
where sexo = 'M' and profissao = 'Programador'
order by nome;

select * from gafanhotos -- UMA LISTA COM OS DADOS DE TODAS AS MULHERES QUE NASCERAM NO BRASIL E QUE TEM SEU NOME INICIADO COM A LETRA J
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

select nome, nacionalidade from gafanhotos -- UMA LISTA COM O NOME E NACIONALIDADE DE TODOS OS HOMENS QUE TEM SILVA NO NOME, NÃO NASCERAM NO BRASIL E PESAM MENOS DE 100KG
where nome like '%silva%' and nacionalidade not in ('Brasil') and peso < 100;

select max(altura) from gafanhotos -- QUAL É A MAIOR ALTURA ENTRE GAFANHOTOS HOMENS QUUE MORAM NO BRASIL
where sexo = 'M' and nacionalidade = 'Brasil';

select avg(peso) from gafanhotos; -- QUAL A MÉDIA DE PESO DOS GAFANHOTOS CADASTRADOS

select min(peso) from gafanhotos -- QUAL É O MENOR PESO ENTRE OS GAFANHOTOS MULHERES QUE NASCERAM FORA DO BRASIL E ENTRE 01/JAN/1990 E 31/DEZ/2000
where sexo = 'F' and nacionalidade not in ('Brasil') and nascimento between '1990-01-01' and '2000-12-31';

select count(altura) from gafanhotos -- QUANTAS GAFANHOTOS MULHERES TEM MAIS DE 1.90M DE ALTURA
where sexo = 'F' and altura > 1.90;

select * from gafanhotos;


