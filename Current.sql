CREATE DATABASE shirt_db;
USE shirt_db;

CREATE TABLE shirts(
	shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(20) NOT NULL,
    color VARCHAR(20) NOT NULL,
    shirt_size CHAR NOT NULL,
    last_worn INT, 
    PRIMARY KEY (shirt_id)
    );
    
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUE('t_shirt','white','S',10),
('t_shirt','white','S',10),
('polo shirt','black','M',200),
('tank top','blue','S',50),
('t_shirt','pink','S',0),
('polo shirt','red','M',5),
('tank top','white','S',200),
('tank top','blue','M',15);

SELECT*FROM shirts WHERE shirt_size='L';

UPDATE shirts
SET shirt_size='M'
WHERE shirt_size='L'
AND shirt_size='S';

SELECT*FROM shirts;