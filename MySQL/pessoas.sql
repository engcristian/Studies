'''
--------------------------MyQL-----------------------------------
Table created at MySQL workbench as exercise from Curso em Vídeo;
-----------------------------------------------------------------
'''
create table pessoas (
    id INT NULL PRIMARY KEY auto_increment,
    nome varchar(20) NOT NULL,
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
    );

    insert into pessoas (nome, idade, sexo, peso, altura, nacionalidade)
    values ('Cristian', 29, 'M',80, 1.70, 'brasileiro')
    insert into pessoas (nome, idade, sexo, peso, altura, nacionalidade)
    values ('Michele', 25, 'F', 79, 1.70, 'brasileira')