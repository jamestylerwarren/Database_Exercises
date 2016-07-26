-- 2i
SELECT * from albums;
UPDATE albums SET sales = sales*10;
-- 2ii
SELECT record from albums where release_date < 1980;
UPDATE albums SET realeas_date = 1800 where release_date < 1980;
-- 2iii
SELECT record from albums where artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' where artist = 'Michael Jackson';
