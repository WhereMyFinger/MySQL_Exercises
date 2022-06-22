CREATE TABLE users (
    first_name VARCHAR(45),
    second_name VARCHAR(45),
    attribute VARCHAR(200)
);

insert into users
value
('Mikel', 'Cover', '%Mikel_Cover%'),
('Vicenta', 'Kravitz', '%Vicenta_Kravitz'),
('Tosha', 'Cover', 'SALKF91204NSDAW2kdfh8SFDSKv9293'),
('Shayne', 'Dahlquist', '0JSDJSK8WkihjD8IK%Shayne_Dahlquist%JHSJjh85'),
('Lizabeth', 'Cover', 'asdnjan9Jh8INKJh8inkNIN9989sj'),
('Mikel', 'Kravitz', 'PAESH82kjncdsj88%Mike_Kravitz%mskdnKKjdks9832'),
('Josphine', 'Arzate', 'kdfjkHJHJS82JUjjkdh%Josphine_arzate%sjhfd82JJDNKJ8'),
('Deidre', 'Chace', 'nsjbJBJBCJD98Njjjnsi');



insert into users
value
('nick', 'cage', 'HSHUSJsj2k24k%nickkcage%kmkc9KKM9jf'),
('uncle', 'ben', 'kknjJNJJNJj82nuncle_benkmskmksKJMKSk8');

select * from users
where binary attribute like concat('_%!%', first_name, '!_', second_name, '!%%') escape '!';
