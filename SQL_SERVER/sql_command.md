## Creation de base exemple

~~~~sql
CREATE DATABASE <name>;
GO
~~~~

## Supprimer une base

~~~~sql
DROP DATABASE <nom de la base>;
~~~~

## Creation de table exemple

~~~~sql
CREATE TABLE <name> (<colonne1> char(15),
                    <colonne2> varchar(20)
                    );
GO
~~~~

## Supprimer une table

~~~~sql
DROP TABLE <nom de la table>;
~~~~

## Ajouter une table dans une DATABASE

~~~~sql
USE <nom de la base>;
GO
~~~~

    <Creation de la table>

### Ajouer des donnée dans la table

~~~~sql
INSERT INTO <nom de la table> VALUES ('exemple1','exemple2');
~~~~

### Afficher les datas dans toute les colonnes d'une table

~~~~sql
USE <nom de la base>;
GO
~~~~

~~~~sql
SELECT * FROM <nom de la table>;
~~~~

## Créer un index

~~~~sql
CREATE INDEX <indexname> ON <tablename>
~~~~

### Créer un index cluster

~~~~sql
CREATE UNIQUE CLUSTERED INDEX <indexname> ON <tablename>
~~~~

### Créer un index non cluster

~~~~sql
CREATE NONCLUSTERED INDEX <indexname> ON <tablename>
~~~~

## Créer une table avec une clé primaire

    une clé primaire est la donnée qui permet d'identifier de manière unique un enregistrement dans une table.

~~~~sql
CREATE TABLE <tablename> (
    c1 <datatype> PRIMARY KEY,
    c2 <datatype>,
    c3 <datatype>,
);
~~~~

OU

~~~~sql
CREATE TABLE <tablename> (
    c1 <datatype>,
    c2 <datatype>,
    c3 <datatype>,
CONSTRAINT pk_primary_key PRIMARY KEY <colonnename>;
);
~~~~

## Supprimer une clé primaire

~~~~sql
ALTER TABLE <tablename>
DROP CONSTRAINT <primarykeyname>
~~~~

