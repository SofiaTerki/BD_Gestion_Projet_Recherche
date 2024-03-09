/*script SQL nommé liste_ora_constraints qui donne une fois exécuté la liste de
toutes les contraintes d'intégrité définies sur notre BD, classées par table et par type
de contrainte, avec le corps de chaque contrainte.*/

Select CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME, SEARCH_CONDITION
From USER_CONSTRAINTS
Order By CONSTRAINT_TYPE, TABLE_NAME
