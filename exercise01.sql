CREATE TABLE users (
	id int,
    username varchar(45),
    role varchar(45),
    email varchar(45)
);
INSERT INTO users
VALUES
(6, 'fasalytch', 'premium', 'much.premium@role.com'),
(13, 'luckygirl', 'regular', 'fun@meh.com'),
(16, 'todayhumor', 'guru', 'today@humor.com'),
(23, 'felix', 'admin', 'felix@codefights.com'),
(52, 'admin666', 'AdmiN', 'iamtheadmin@admin.admin'),
(87, 'solver100500', 'regular', 'email@notbot.com');

SELECT email FROM users
WHERE lower(role) != 'admin'
AND lower(role) != 'premium'
ORDER BY email ASC;