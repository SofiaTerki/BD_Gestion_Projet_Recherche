/*Script SQL qui donne une fois exécuté la liste de tous les utilisateurs de la base de données*/
Select USERNAME, USER_ID, CREATED	
From All_users
Order by Username;
