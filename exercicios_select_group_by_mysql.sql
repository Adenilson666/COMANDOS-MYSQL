select profissao, count(*) from gafanhotos -- UMA LISTA COM AS PROFISSÕES DOS GAFANHOTOS E SEUS RESPECTIVOS QUANTITATIVOS
group by profissao
order by profissao;

select sexo, count(*) from gafanhotos -- QUANTAS GAFANHOTOS HOMENS E QUANTAS MULHERES NASCERAM APOS 01/JAN/2005
where nascimento > '2005-01-01'
group by sexo;

select nome, nacionalidade, count(*) from gafanhotos -- UMA LISTA COM OS GAFANHOTOS QUE NASCERAM FORA DO BRASIL, MOSTRANDO O PAIS DE ORIGEM E O TOTAL DE PESSOAS NASCIDAS LÁ. SÓ NOS INTERESSAM OS PAISES QUE TIVEREM MAIS DE 3 GAFANHOTOS COM ESSA NACIONALIDADE
where nacionalidade not in ('Brasil')
group by nacionalidade
having count(nacionalidade) > 3;

select avg(altura) from gafanhotos; 

select nome, altura, peso from gafanhotos -- UMA LISTA AGRUPADA PELA ALTURA DOS GAFANHOTOS, MOSTRANDO QUANTAS PESSOAS PESAM MAIS DE 100KG E QUE ESTÃO ACIMA DA MÉDIA DE ALTURA DE TODOS OS CADASTRADOS
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);

select * from gafanhotos;
