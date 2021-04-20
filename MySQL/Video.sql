create database youtube;

use youtube;

create table videos (
    id_video int not null primary key auto_increment,
    fk_autor int,
    titulo varchar(30) not null,
    likes int,
    dislikes int
);
create table autor(
    id_autor int not nul primary key auto_incremen,
    nome varchar(30),
    born date
);

insert into autor(nome, born) values ('Cris', '1991-10-31')
insert into autor(nome, born) values ('Ana', '1999-5-13')
insert into autor(nome, born) values ('Pedro', '2010-7-19')

insert into videos (fk_autor, titulo, likes, dislikes) 
values (1, 'Aprendendo MySQL', 30, 3)
insert into videos (fk_autor, titulo, likes, dislikes)
values (2, 'Aprendendo HTML', 25, 1)
insert into videos (fk_autor, titulo, likes, dislikes)
values( 3, 'Aprendendo Python', 50, 5)


select*from videos join autor on videos.fk_autor = autor.id_autor

select autor.nome, videos.titulo, videos.likes, videos.dislikes 
from videos join autor on videos.fk_autor = autor.id_autor;