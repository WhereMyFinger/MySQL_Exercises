CREATE TABLE grades (
    Name VARCHAR(45),
    ID INT(5),
    Midterm1 INT,
    Midterm2 INT,
    Final INT,
    CHECK (Midterm1 <= 100 AND Midterm2 <= 100
        AND Final <= 200)
);

insert into grades 
values
('David', 42334, 34, 54, 124),
('Anthony', 54528, 100, 10, 50),
('Jonathan', 58754, 49, 58, 121),
('Jonty', 11000, 25, 30, 180);

select Name, ID from grades
where Final > Midterm1 + Midterm2
order by substr(Name, 1, 3) asc, ID asc; 

