describe gafanhotos;
describe cursos;

alter table gafanhotos
add column idcurso int;

alter table gafanhotos
add foreign key (idcurso)
references cursos(idcurso);

update gafanhotos set idcurso = '6' where id = '1';
update gafanhotos set idcurso = '11' where id = '4';
update gafanhotos set idcurso = '9' where id = '6';
update gafanhotos set idcurso = '7' where id = '17';
update gafanhotos set idcurso = '2' where id = '20';
update gafanhotos set idcurso = '1' where id = '9';

select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.idcurso
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.idcurso;

select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.idcurso;

select * from gafanhotos;
select * from cursos;