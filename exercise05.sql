CREATE TABLE Suspect (
    id INT UNIQUE,
    name VARCHAR(45),
    surname VARCHAR(45),
    height INT,
    weight INT
);

insert into Suspect
values
(1, 'John', 'Doe', 165, 60),
(2, 'bill', 'Green', 170, 67),
(3, 'Bealfire', 'Grehn', 172, 70),
(4, 'Bill', 'Gretan', 165, 55),
(5, 'Brendon', 'Grewn', 150, 50),
(6, 'bill', 'Green', 169, 50);

select id, name, surname from Suspect
where height <= 170 and lower(name) like 'b%' and surname like 'Gre_n';