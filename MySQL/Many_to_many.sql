'''
--------------------------MyQL-----------------------------------
Table created at SQLite  as exercise from FreeCodeCamp;
-----------------------------------------------------------------
'''
create table User (
    id integer not null primary key auto_increment unique,
    name text unique,
    email text
);

create table Course (
    id integer not null primary key auto_incremen unique,
    title text unique
);

create teble Member (
     user_id    integer,
     course_id  integer,
        role    integer,
        primary key (user_id, course_id)
);

insert into User (name, email) values ('Cris', 'cris@email.com');
insert into User (name, email) values ('Ana', 'ana@email.com');
insert into User (name, email) values ('Pedro', 'pedro@email.com');

insert into Course (title) values ('Python');
insert into Course (title) values ('SQL');
insert into Course (title) values ('Data Science');

insert into Member (user_id, course_id, role) values (1, 1, 1);
insert into Member (user_id, course_id, role) values (2, 1, 0);
insert into Member (user_id, course_id, role) values (3, 1, 0);

insert into Member (user_id, course_id, role) values (1, 2, 0);
insert into Member (user_id, course_id, role) values (2, 2, 1);

insert into Member (user_id, course_id, role) values (2, 3, 1);
insert into Member (user_id, course_id, role) values (3, 3, 0);

select User.name, Member.role, Course.title from User join Member join Course
on Member.user_id = User.id And Member.course_id = Course.id
order by Course.title , Member.role, desc, User.name