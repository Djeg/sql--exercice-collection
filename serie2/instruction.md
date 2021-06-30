# Exercice MySQL - Serie 2

Avant de commencer insérer le fichier [exo.sql](./exo.sql)
dans votre base de données via [phpmyadmin](http://localhost/phpmyadmin?route=/server/sql)

## Exo 1

Créer la table "utilisateurs" avec les champs suivants :

| Colone | type                               |
| ------ | ---------------------------------- |
| id     | INTEGER PRIMARY KEY AUTO_INCREMENT |
| nom    | VARCHAR(255)                       |
| prenom | VARCHAR(255)                       |

## Exo 2

Insérer dans la table "utilisateurs" les données suivantes :

| nom    | prenom |
| ------ | ------ |
| Dupont | Jaques |
| Doe    | Rose   |
| Dupont | Jane   |
| Doe    | Jack   |

## Exo 3

Créer la table "commentaires" avec les champs suivants :

| Colone        | type                               |
| ------------- | ---------------------------------- |
| id            | INTEGER PRIMARY KEY AUTO_INCREMENT |
| contenu       | TEXT                               |
| utilisateurId | INTEGER                            |

## Exo 4

Ajouter la contrainte de clefs étrangère suivante :
**Lier le champ `commentaires.utilisateurId` à
`utilisateurs.id`**

## Exo 5

Ajouter les commentaires suivants

| contenu                     | utilisateurId |
| --------------------------- | ------------- |
| Lorem Ipsum                 | 1             |
| Dolor Sit amet              | 2             |
| Consectetur adipiscing elit | 3             |
| Suspendisse ne              | 1             |
| magna eget quam             | 2             |
| elementum sagittis          | 3             |
| Aliquam dignissim           | 1             |
| massa sit amet              | 2             |
| justo feugiat               | 3             |

## Exo 6

Grâce à une jointure "INNER JOIN", créer le tableaux
suivant :

| commentaires.contenu | utilisateurs.nom | utilisateurs.prenom |
| -------------------- | ---------------- | ------------------- |

## Exo 7

Ajouter la colone **`articleId`** dans la table **`commentaires`**
de type **`INTEGER`**

## Exo 8

Ajouter la contrainte de clefs étrangére suivante :
**Lier `commentaires.articleId` à `articles.id`**

## Exo 9

Modifier tout les commentaires et attacher la valeur **1** au
champ **`articleId`**

## Exo 9

Grâce à une jointure "INNER JOIN", créer le tableaux
suivant :

| commentaires.contenu | articles.titre |
| -------------------- | -------------- |

## Exo 10

Grâce à plusieurs jointures "INNER JOIN", créer le tableaux
suivant :

| commentaires.contenu | articles.titre | auteurs.nom | auteur.prenom |
| -------------------- | -------------- | ----------- | ------------- |

## Exo 11

Grâce à un INNER JOIN et WHERE récupérer tout les articles
écrits par l'auteur "John Doudou"

## Exo 12

Grâce à une INNER JOIN et WHERE récupérer tout les articles
commentés par l'utilisateur "Doe Rose"

IF(L4 = 0; "A"; IF(L4 = 1; "B"; IF(L4 = 2; "C"; IF(L4 = 3; "D"; IF(L4 = 4; "E"; "F")))))
