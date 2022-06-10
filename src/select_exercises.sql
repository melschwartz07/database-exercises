create database if not exists codeup_test_db;
use codeup_test_db;


select album_name from albums where artist_name = 'Pink Floyd';
select release_date from albums where album_name = 'Sgt. Peppers lonely Hearts Club Band';
select genre from albums where album_name = 'Nevermind';
select album_name from albums where release_date = '1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999';
select album_name from albums where sales < 20;
select album_name from albums where genre = 'Rock';
