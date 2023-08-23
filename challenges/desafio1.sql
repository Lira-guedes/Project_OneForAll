DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

---- PLANO
CREATE TABLE IF NOT EXISTS SpotifyClone.planos (
    id_plano INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    preço DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_plano),
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (nome, preço)
VALUES
  ('gratuito', 0),
  ('familiar', '7,99'),
  ('universitário', '5,99'),
  ('pessoal', '6,99');


---- ARTISTAS
CREATE TABLE IF NOT EXISTS SpotifyClone.artistas (
    id_artista INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    PRIMARY KEY (id_artista),
) engine = InnoDB;

INSERT INTO SpotifyClone.artistas (nome)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');


---- USUARIOS
CREATE TABLE IF NOT EXISTS SpotifyClone.usuarios (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    idade INT NOT NULL,
    id_plano INT NOT NULL,
    data_assinatura DATE NOT NULL,
    PRIMARY KEY (id_usuario),
        FOREING KEY (id_plano) REFERENCES SpotifyClone.planos (id_plano)
) engine = InnoDB;

INSERT INTO SpotifyClone.usuarios (nome, idade)
VALUES
  ('Barbara Liskov', 82),
  ('Robert Cecil Martin', 58),
  ('Ada Lovelace', 37),
  ('Martin Fowler', 46),
  ('Sandi Metz', 58),
  ('Paulo Freire', 19),
  ('Bell Hooks', 26),
  ('Christopher Alexander', 85),
  ('Judith Butler', 45),
  ('Jorge Amado', 58);


---- ALBUM
CREATE TABLE IF NOT EXISTS SpotifyClone.album (
    id_album INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    ano_lançamento YEAR NOT NULL,
    id_artista INT NOT NULL,
    PRIMARY KEY (id_album),
      FOREING KEY (id_artista) REFERENCES SpotifyClone.artistas (id_artista),
) engine = InnoDB;

INSERT INTO SpotifyClone.album (nome, ano_lançamento)
VALUES
  ('Renaissance', 2022),
  ('Jazz', 1978),
  ('Hot Space', 1982),
  ('Falso Brilhante', 1998),
  ('Vento de Maio', 2001),
  ('QVVJFA?', 2003),
  ('Somewhere Far Beyond', 2007),
  ('Somewhere Far Beyond', 2012);


---- CANÇOES
CREATE TABLE IF NOT EXISTS SpotifyClone.cancoes (
    id_cancoes INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    duraçao INT NOT NULL,
    id_album INT NOT NULL,
    PRIMARY KEY (id_cancoes),
     FOREING KEY (id_album) REFERENCES SpotifyClone.album (id_album),
) engine = InnoDB;

INSERT INTO SpotifyClone.cancoes (nome, duraçao)
VALUES
  ('BREAK MY SOUL', 279),
  ("VIRGO'S GROOVE", 369),
  ('ALIEN SUPERSTAR', 116),
  ("Don't Stop Me Now", 203),
  ('Under Pressure', 152),
  ('O Medo de Amar é o Medo de Ser Livre', 207),
  ('Samba em Paris', 267),
  ("The Bard's Song", 244),
  ('Feeling Good', 100);


---- HISTORICO
CREATE TABLE IF NOT EXISTS SpotifyClone.historico (
    id_historico INT NOT NULL AUTO_INCREMENT,
    id_cancoes INT NOT NULL,
    id_usuario INT NOT NULL,
    data_reproduçao DATETIME NOT NULL,
    PRIMARY KEY (id_historico),
     FOREING KEY (id_cancoes) REFERENCES SpotifyClone.cancoes (id_cancoes),
     FOREING KEY (id_usuario) REFERENCES SpotifyClone.usuarios (id_usuario)
) engine = InnoDB;

INSERT INTO SpotifyClone.historico (data_reproduçao)
VALUES
  (''),
  (''),
  (''),
  ('');


---- SEGUINDO
CREATE TABLE IF NOT EXISTS SpotifyClone.seguindo_artistas (
    id_seguindo_artistas INT NOT NULL AUTO_INCREMENT,
    id_artista INT NOT NULL,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_seguindo_artistas),
    FOREING KEY (id_artista) REFERENCES SpotifyClone.artistas (id_artista),
        FOREING KEY (id_usuario) REFERENCES SpotifyClone.usuarios (id_usuario),
) engine = InnoDB;

INSERT INTO SpotifyClone.seguindo_artistas (coluna1, coluna2)
VALUES
  ('', ''),
  ('', ''),
  ('', ''),
  ('', '')
;