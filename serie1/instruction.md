# Exercice MySQL - Serie 1

Avant de commencer insérer le fichier [exo.sql](./exo.sql)
dans votre base de données via [phpmyadmin](http://localhost/phpmyadmin?route=/server/sql)

## Exo 1

Ajouter dans la table "articles" les lignes suivantes:

| titre                     | description                         | contenu         |
| ------------------------- | ----------------------------------- | --------------- |
| Voyage en afrique         | Mon super voyage en afrique         | Lorem ipsum ... |
| Voyage en amérique du sud | Mon super voyage en amérique du sud | Lorem ipsum ..  |

## Exo 2

Changer le titre de l'article avec l'id n° 1 par : "Mon tout premier article"

## Exo 3

Séléctionner tout les article dont le titre contient le mot "Voyage"

## Exo 4

Mettre à jour la description de l'article avec le titre "Voyage en afrique" en remplaçant
par : "Voyage en éthiopie"

## Exo 5

Supprimer l'article avec le titre "Voyage en amérique du sud"

## Exo 6

Créer une table "auteurs" avec les colones suivantes

| nom            | type                               |
| -------------- | ---------------------------------- |
| id             | INTEGER PRIMARY KEY AUTO_INCREMENT |
| nom            | VARCHAR(255)                       |
| prenom         | VARCHAR(255)                       |
| email          | VARCAR(255)                        |
| imageDeProfile | VARCHAR(255)                       |

## Exo 7

Ajouter dans la table "autheurs" les données suivantes

| nom    | prenom | email                | imageDeProfile                                                              |
| ------ | ------ | -------------------- | --------------------------------------------------------------------------- |
| Doe    | John   | john.doe@mail.com    | https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png |
| Doe    | Jane   | jane.doe@mail.com    | https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png |
| Dupont | Jean   | jean.dupont@mail.com | https://www.fote.org.uk/wp-content/uploads/2017/03/profile-icon-300x300.png |

## Exo 8

Séléctionner l'id et l'email des auteurs avec le nom "Doe"

## Exo 9

Séléctionner tout les articles dont la description commence par
"Mon" et dont le titre contient "Voyage"

## Exo 10

Méttre à jour tout les auteurs avec le nom "Doe" et leurs assigner
le nom "Doudou"
