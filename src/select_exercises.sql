
use codeup_test_db;


select album_name from albums where artist_name = 'Pink Floyd';
select release_date from albums where album_name = 'Sgt. Peppers lonely Hearts Club Band';
select genre from albums where album_name = 'Nevermind';
select album_name from albums where release_date = '1990';
select album_name from albums where sales < '20 million';
select album_name from albums where genre = 'Rock';

