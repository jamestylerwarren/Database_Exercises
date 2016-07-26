use codeup_test_db;
-- i
DELETE from albums where release_date > 1991;
-- ii
DELETE from albums where genre = 'disco';
-- iii
DELETE from albums where artist ='eagles';