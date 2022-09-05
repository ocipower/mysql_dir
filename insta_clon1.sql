CREATE DATABASE insta_clon;
USE insta_clon;
 -- DROP DATABASE insta_clon;
CREATE TABLE users(
                   id INT AUTO_INCREMENT,
                   username VARCHAR(255) UNIQUE NOT NULL,
                   create_at TIMESTAMP DEFAULT NOW(),
                   PRIMARY KEY (id)
                   );
                   
DESC users;

INSERT INTO users(username)
            VALUES("Chioma"),
                   ("Musa"),
                    ("Dan");
SELECT*FROM users;



CREATE TABLE photos(
                     id INT AUTO_INCREMENT,
				     image_url VARCHAR(255) NOT NULL,
                     user_id INT NOT NULL,
                     created_at TIMESTAMP DEFAULT NOW(),
                     PRIMARY KEY (id), 
                     FOREIGN KEY(user_id) REFERENCES users(id)
                    ); 
                    
INSERT INTO photos(image_url,user_id)
VALUES("/fffhghgt",1),
	   ("/gggggfhgth",2),
        ("/ddddfhgth",2),
         ("jjjjjfhgth",2);         
				
CREATE TABLE comments(
                     id INT AUTO_INCREMENT,
				     comments_text VARCHAR(255) NOT NULL,
                     user_id INT NOT NULL,
                     photo_id INT NOT NULL,
                     created_at TIMESTAMP DEFAULT NOW(),
                     PRIMARY KEY (id), 
                     FOREIGN KEY(user_id) REFERENCES users(id),
                     FOREIGN KEY(photo_id) REFERENCES photos(id)
                    ); 
INSERT INTO comments(comments_text, user_id, photo_id)VALUES
("cool",1,2),
("good",3,2),
("i hrt this",2,1);
                    
SELECT*FROM comments;



CREATE TABLE likes(
				   user_id INTEGER NOT NULL,
                   photo_id INTEGER NOT NULL, 
                   created_at TIMESTAMP DEFAULT NOW(),
				   FOREIGN KEY(user_id) REFERENCES users(id),
				   FOREIGN KEY(photo_id) REFERENCES photos(id),
                   PRIMARY KEY(user_id, photo_id)
                   );                   
                    
INSERT INTO likes(user_id, photo_id)                    
VALUES(1,2),
       (2,1), 
       (1,1),
       (1,3),
       (3,3);

SELECT*FROM likes;                    
                
                
                
CREATE TABLE follow (
                      follower_id INTEGER NOT NULL,
                      followee_id INTEGER NOT NULL,
                      created_at TIMESTAMP DEFAULT NOW(),
					  FOREIGN KEY(follower_id) REFERENCES users(id),
                      FOREIGN KEY(followee_id) REFERENCES users(id),
					  PRIMARY KEY(follower_id, followee_id )
                     ); 
                     
INSERT INTO follow(follower_id, followee_id)VALUES
(1,2),
(1,3),
(3,1),
(2,3);

SELECT*FROM follow;

INSERT INTO follow(follower_id, followee_id)VALUES
(3,2);





CREATE TABLE tags(
                  id INTEGER AUTO_INCREMENT,
                  tag_name VARCHAR(255) UNIQUE,
                  created_at TIMESTAMP DEFAULT NOW(),
                  PRIMARY KEY (id)
                  );


CREATE TABLE photo_tags(
					 photo_id INTEGER NOT NULL,
                     tag_id INTEGER NOT NULL,
                     FOREIGN KEY(photo_id) REFERENCES photos(id),
					 FOREIGN KEY(tag_id) REFERENCES tags(id),
                     PRIMARY KEY(photo_id,tag_id)
                     );
                     
insert into Tags(tag_name)
VALUES("adorable"),
       ("cute"),
	   ("sunrise");
                     
SELECT*FROM tags;

INSERT INTO photo_tags()VALUES
(1,1),
(1,2), 
(2,3),
(3,2);                    


SELECT*FROM photo_tags;















                    
                    
                    
                    
                    