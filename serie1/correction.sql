-- Correction exo 1
USE test_blog;

INSERT INTO articles(
  titre,
  description,
  contenu
) VALUES (
  "Voyage en afrique",
  "Mon super voyage en afrique",
  "Lorem Ipsum ..."
), (
  "Voyage en amérique du sud",
  "Mon super voyage en amérique du sud",
  "Lorem Ipsum ..."
);

-- Correction exo 2
USE test_blog;

UPDATE articles
SET titre = "Mon tout premier article"
WHERE id = 1;

-- Correction exo 3
USE test_blog;

SELECT * FROM articles WHERE titre LIKE "%Voyage%";

-- Correction exo 4
USE test_blog;

UPDATE articles
SET description = "Voyage en éthiopie"
WHERE titre = "Voyage en afrique";

-- Correction exo 5
USE test_blog;

DELETE FROM articles
WHERE titre = "Voyage en amérique du sud";

-- Correction exo 6
USE test_blog;

CREATE TABLE auteurs (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255),
  prenom VARCHAR(255),
  email VARCHAR(255),
  imageDeProfile VARCHAR(255)
);

-- Correction exo 1
USE test_blog;

INSERT INTO auteurs (
  nom,
  prenom,
  email,
  imageDeProfile
) VALUES (
  "Doe",
  "John",
  "john.doe@mail.com",
  "https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png"
), (
  "Doe",
  "Jane",
  "jane.doe@mail.com",
  "https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png"
), (
  "Dupont",
  "Jean",
  "jean.dupont@mail.com",
  "https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png"
);

-- Correction Exo 8
USE test_blog;

SELECT id, email FROM auteurs
WHERE nom = "Doe";

-- Correction Exo 9
USE test_blog;

SELECT * FROM articles
WHERE description LIKE "Mon%" AND titre LIKE "%Voyage%";

-- Correction Exo 10
USE test_blog;

UPDATE auteurs
SET nom = "Doudou"
WHERE nom = "Doe";





SELECT
  A.titre as articleTitre,
  Au.nom as auteurNom,
  Au.prenom as auteurPrenom
FROM
  articles as A
INNER JOIN auteurs as Au
ON A.auteurId = Au.id;