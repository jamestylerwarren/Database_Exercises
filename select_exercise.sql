use codeup_test_db;

-- Number 1: select records where artist was pick floyd
select record from albums where artist = 'pink floyd';

-- Number 2: select release dates of record named sgt. pepper's...
select release_date from albums where record = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- Number 3: select genre of record names nevermind
select genre from albums where record = 'Nevermind';

-- Number 4: select all albums with release date in 90's
select * from albums where release_date between 1990 and 1999;

-- Number 5: select albums with sales less than 20 million
select * from albums where sales < 20;

-- Number 6: select albums where genre is rock
select * from albums where genre = 'rock' OR 'grunge' OR 'pop';