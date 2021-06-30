-- Correction Exo 1
USE test_blog;

CREATE TABLE utilisateurs(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255),
  prenom VARCHAR(255)
);

-- Correction Exo 2
USE test_blog;

INSERT INTO utilisateurs (nom, prenom)
VALUES ("Dupont", "Jaques"),
("Doe", "Rose"),
("Dupont", "Jane"),
("Doe", "Jack");

-- Correction Exo 3
USE test_blog;

CREATE TABLE commentaires(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  contenu TEXT,
  utilisateurId INTEGER
);

-- Correction Exo 4
USE test_blog;

ALTER TABLE commentaires
ADD CONSTRAINT fk_commentaires_utilisateurs
FOREIGN KEY (utilisateurId)
REFERENCES utilisateurs(id);

-- Correction Exo 5
USE test_blog;

INSERT INTO commentaires (contenu, utilisateurId)
VALUES ("Lorem ipsum", 1),
("Dolor sit amet", 2),
("Consectetur adipiscing elit", 3),
("Suspendisse ne", 1),
("magna eget quam", 2),
("elementum sagittis", 3),
("Aliquam dignissim", 1),
("massa sit amet", 2),
("justo feugiat", 3);

-- Correction Exo 6
USE test_blog;

SELECT
  commentaires.contenu,
  utilisateurs.nom,
  utilisateurs.prenom
FROM
  commentaires
INNER JOIN utilisateurs
ON commentaires.utilisateurId = utilisateurs.id;

-- Correction Exo 7
USE test_blog;

ALTER TABLE commentaires
ADD articleId INTEGER;

-- Correction Exo 8
USE test_blog;

ALTER TABLE commentaires
ADD CONSTRAINT fk_commentaires_articles
FOREIGN KEY (articleId)
REFERENCES articles(id);

-- Correction Exo 9
USE test_blog;

UPDATE commentaires
SET articleId = 1;

-- Correction Exo 9 (2)
USE test_blog;

SELECT
  commentaires.contenu,
  articles.titre
FROM
  commentaires
INNER JOIN articles
ON commentaires.articleId = articles.id;

-- Correction Exo 10
USE test_blog;

SELECT
  commentaires.contenu,
  articles.titre,
  auteurs.nom,
  auteurs.prenom
FROM
  commentaires
INNER JOIN articles
ON commentaires.articleId = articles.id
INNER JOIN auteurs
ON articles.auteurId = auteurs.id;

-- Correction Exo 11 (Solution 1)
USE test_blog;

SELECT
  articles.id,
  articles.titre,
  auteurs.nom,
  auteurs.prenom
FROM articles
INNER JOIN auteurs
ON articles.auteurId = auteurs.id
WHERE auteurs.id = 1;

-- Correction Exo 11 (Solution 2)
USE test_blog;

SELECT
  articles.id,
  articles.titre,
  auteurs.nom,
  auteurs.prenom
FROM articles
INNER JOIN auteurs
ON articles.auteurId = auteurs.id
WHERE auteurs.nom LIKE "Doudou"
AND auteurs.prenom LIKE "John";

-- Correction Exo 11 (Solution 3)
USE test_blog;

SELECT
  articles.id,
  articles.titre,
  CONCAT(auteurs.prenom, " ", auteurs.nom) as nomComplet
FROM articles
INNER JOIN auteurs
ON articles.auteurId = auteurs.id
WHERE (
  CONCAT(auteurs.prenom, " ", auteurs.nom)
  LIKE "John Doudou"
) OR (
  CONCAT(auteurs.nom, " ", auteurs.prenom)
  LIKE "John Doudou"
);

-- Correction exo 12
USE test_blog;

SELECT
  articles.titre,
  commentaires.contenu,
  utilisateurs.nom,
  utilisateurs.prenom
FROM articles
INNER JOIN commentaires
ON commentaires.articleId = articles.id
INNER JOIN utilisateurs
ON commentaires.utilisateurId = utilisateurs.id
WHERE (
  CONCAT(utilisateurs.nom, " ", utilisateurs.prenom)
  LIKE "Doe Rose"
) OR (
  CONCAT(utilisateurs.prenom, " ", utilisateurs.nom)
  LIKE "Doe Rose"
);