.read data.sql


CREATE TABLE bluedog AS
  SELECT "color", "pet", "song"
  FROM students
  WHERE "color" = "blue" AND "pet" = "dog";

CREATE TABLE bluedog_songs AS
  SELECT "color", "pet"
  FROM students
  WHERE "color" = "blue" AND "pet" = "dog";


CREATE TABLE smallest_int AS
  SELECT "time", "smallest"
  FROM students
  WHERE "smallest" > 2
  ORDER BY "smallest" ASC
  LIMIT 20;


CREATE TABLE matchmaker AS
  SELECT s1.pet, s2.song, s1.color, s2.color
  FROM students s1
  JOIN students s2
  ON s1.pet = s2.pet AND s1.song = s2.song AND s1.time != s2.time;


CREATE TABLE sevens AS
  SELECT s.seven
  FROM students s
  JOIN numbers n
  ON s.time = n.time
  WHERE s.number = 7 AND n."7" = "True";

