CREATE TABLE full_year (
    id INT,
    newspaper VARCHAR(45),
    subcriber VARCHAR(45)
);

insert into full_year
values
(1, 'The Paragon Herald', 'Crissy Sepe'),
(2, 'The Daily Reporter', 'Tonie Montero'),
(3, 'Morningtide Daily', 'Erwin Chitty'),
(4, 'Daily Breakfast', 'Tonie Montero'),
(5, 'Independent Weekly', 'Lavelle Phu');

alter table full_year
modify column id int unique;

CREATE TABLE half_year (
    id INT UNIQUE,
    newspaper VARCHAR(45),
    subcriber VARCHAR(45)
);

insert into half_year
values
(1, 'The Daily Reporter', 'Lavelle Phu'),
(2, 'Daily Breakfast', 'Tonie Montero'),
(3, 'The Paragon Herald', 'Lia Cover'),
(4, 'The Community Gazette', 'Lavelle Phu'),
(5, 'Nova Daily', 'Lia Cover'),
(6, 'Nova Daily', 'Joya Buss');

select distinct subcriber from full_year
where newspaper like '%Daily%'
union
select distinct subcriber from half_year
where newspaper like '%Daily%'
order by subcriber asc;