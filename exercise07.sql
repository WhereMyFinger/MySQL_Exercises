CREATE TABLE answers (
    id INT UNIQUE,
    correct_answer VARCHAR(45),
    give_answer VARCHAR(45)
);

insert into answers
values
(1, 'a', 'a'),
(2, 'b', null),
(3, 'c', 'b');

SELECT id,
    CASE
        WHEN give_answer = correct_answer THEN 'correct'
        WHEN give_answer = NULL THEN 'no answer'
        WHEN give_answer != correct_answer THEN 'incorrect'
    END AS checks
FROM answers;