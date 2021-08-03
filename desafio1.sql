CREATE DATABASE SpotifyClone;
CREATE TABLE `user`(
`user_id` INT NOT NULL AUTO_INCREMENT,
`user_name`VARCHAR(50) NOT NULL,
`user_age` INT NOT NULL,
`plano_id` INT NOT NULL,
PRIMARY KEY (`user_id`)
)ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `Album`(
`album_id` INT NOT NULL AUTO_INCREMENT,
`album`VARCHAR(50) NOT NULL,
`artista_id` INT NOT NULL,
PRIMARY KEY (`album_id`)
)ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `songs`(
`song_id` INT NOT NULL AUTO_INCREMENT,
`song`VARCHAR(100) NOT NULL,
`album_id` INT NOT NULL,
PRIMARY KEY (`song_id`)
)ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `plano`(
`plano_id` INT NOT NULL AUTO_INCREMENT,
`plano`VARCHAR(50) NOT NULL,
`valor_plano` double NOT NULL,
PRIMARY KEY (`plano_id`)
)ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `artista`(
`artista_id` INT NOT NULL AUTO_INCREMENT,
`artista`VARCHAR(100) NOT NULL,
PRIMARY KEY (`artista_id`)
)ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `historico`(
`user_id` INT NOT NULL,
`song_id`INT NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `Follow`(
`user_id` INT NOT NULL,
`artista_id`INT NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `user` (user_name,user_age,plano_id)
VALUES
  ('Thati', 23,1),
  ('Cintia', 35,2),
  ('Bill',20,3),
  ('Roger',45,1);
  
  
  INSERT INTO `artista`(artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
  INSERT INTO `Album` (album,artista_id)
VALUES
  ('Envious',1),
  ('Exuberant',1),
  ('Hallowed Steam',2),
  ('Incandescent',3),
  ('Temporary Culture',4);
  
  
  INSERT INTO `songs` (song,album_id)
VALUES
  ('Soul For Us',1),
  ('Reflections Of Magic',1),
  ('Dance With Her Own',1),
  ('Troubles Of My Inner Fire',2),
  ('Time Fireworks',2),
  ('Magic Circus',3),
  ('Honey So Do I',3),
  ("Sweetie,Let's Go Wild",3),
  ('She Knows',3),
  ('Fantasy For Me',4),
  ('Celebration Of More',4),
  ('Rock His Everything',4),
  ('Home Forever',4),
  ('Diamond Power',4),
  ("Honey,Let's Be Silly",4),
  ('Thang Of Thunder',5),
  ('Words Of Her Life',5),
  ('Without My Streets',5);
  
  
    INSERT INTO `plano` (plano,valor_plano)
VALUES
  ('gratuito',0),
  ('familiar',7.99),
  ('universitário',5.99);
  
  
    INSERT INTO `historico` (user_id,song_id)
VALUES
  (1,1),
  (1,6),
  (1,14),
  (1,16),
  (2,13),
  (2,17),
  (2,2),
  (2,15),
  (3,4),
  (3,16),
  (3,6),
  (4,3),
  (4,18),
  (4,11);

    INSERT INTO `Follow` (user_id,artista_id)
VALUES
  (1,1),
  (1,4),
  (1,3),
  (2,1),
  (2,3),
  (3,2),
  (3,1),
  (4,4);
  