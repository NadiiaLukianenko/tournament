-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


-- CREATE DATABASE tournament;
-- TABLE player - registered players who plays in tournament
CREATE TABLE player(
id          SERIAL PRIMARY KEY,
name        TEXT UNIQUE NOT NULL CHECK(name <> '')
);

-- TABLE match - results of match
CREATE TABLE match(
id              SERIAL PRIMARY KEY,
winner          integer REFERENCES player(id),
loser           integer REFERENCES player(id)
);

-- VIEW standings - current players standings in DESC order
-- Returns: id, name, count of wins, count of all matches
CREATE VIEW standings as select p.id,p.name,
count(case when p.id=m.winner then 1 end) as wins,
count(case when p.id=m.winner or p.id=m.loser then 1 end) as matches
from
player p left outer join match m
on p.id=m.winner or p.id=m.loser
group by p.id
order by wins desc;
