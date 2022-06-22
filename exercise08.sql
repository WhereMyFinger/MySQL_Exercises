CREATE TABLE expressions (
    id INT UNIQUE,
    a INT,
    b INT,
    operation CHAR,
    c INT,
    CHECK (operation IN ('+' , '-', '*', '/'))
);

insert into expressions
value
(1, 2, 3, '+', 5),
(2, 2, 3, '+', 6),
(3, 3, 2, '/', 1),
(4, 4, 7, '*', 28),
(5, 54, 2, '-', 27),
(6, 3, 0, '/', 0);
	
select * from expressions
where c = case
	when operation = '+' then a + b
    when operation = '-' then a - b
    when operation = '*' then a * b
    when operation = '/' then a / b
    end;