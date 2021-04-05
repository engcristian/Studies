'''
--------------------------MyQL-----------------------------------
Table created at SQLite  as exercise from FreeCodeCamp;
-----------------------------------------------------------------
'''create table 'Artist' (
    'id' integer primary key auto_increment not null unique, 'name' text
);

create table 'Album' ( 
    'id' integer primary key auto_increment not null  unique,
      artist_id integer,
      'title' text
);

create table 'Genre'(
    'id' integer primary key not null unique,
    'name' text
);

create table 'Track' ('id' integer primary key not null unique,
    album_id integer, genre_id integer, len integer, rating integer,
    'title' text, 'count' integer

);

insert into Artist (name) values ('Led Zepplin');
insert into Artist (name) values ('AC/DC');

insert into Genre (name) values ('Rock');
insert into Genre (name) values ('Metal');

insert into Album(title, artist_id) values ('Who made who', 2)
insert into Album(title, artist_id) values ('IV', 1)

insert into Track (title, rating, len, count, album_id, genre_id)
            values('Black dog', 5, 297, 0, 2, 1)
insert into Track (title, rating, len, count, album_id, genre_id)
            values('Stairway', 5, 482, 0, 2, 1)
insert into Track (title, rating, len, count, album_id, genre_id)
            values('About to rock', 5, 313, 0, 1, 2)
insert into Track (title, rating, len, count, album_id, genre_id)
            values('Who made who', 5, 207, 0, 1, 2)


select Album.title, Artist.name from Album join Artist on Album.artist_id = Artist.id

select Album.title, Album.artist_id, Artist.id, Artist.name
from Album join Artist on Album.artist_id = Artist.id

select Track.title, Genre.name from Track join Genre on Track.genre_id = genre.id

select Track.title, Track.genre_id, Genre.id, Genre.name from Track join Genre

select Track.title, Artist.name, Album.title, Genre.name from Track join Genre
join Album join Artist on Track.genre_id = Genre.id and Track.album_id = Album.id and
Album.artist_id = Artist.id