'''
---------------------SQLite---------------------------
Table created at SQLite as exercise from FreeCodeCamp
------------------------------------------------------
'''

CREATE TABLE "Dados pessoais" (
    "id"        INTEGER,
	"nome"	    TEXT,
	"idade"	    TEXT,
	"sexo"	    TEXT,
    "altura"    REAL,
    "peso"      REAL,
    'nacionalidade' TEXT,
	PRIMARY KEY("nome" AUTOINCREMENT)
);

insert into 'dados pessoais' (nome, idade, sexo, altura, peso, nacionalidade)
values ('Cristian', 29, 'm', 1.70, 80, 'brasileiro')
insert into 'dados pessoais' (nome, idade, sexo, altura, peso, nacionalidade)
values ('Michele', 25, 'f', 1.70, 80, 'brasileira')
insert into 'dados pessoais' (nome, idade, sexo, altura, peso, nacionalidade)
values ('Pedro', 18, 'm', 1.65, 60, 'mexicano')


update 'dados pessoais' set nome = 'Lucas' where nome = 'Pedro'

select*from 'dados pessoais' where altura = 1.70

delete from 'dados pessoais' where nome =  'Pedro'

select*from 'dados pessoais' order by nome desc