# BD-Gestion_Projet_Recherche

**Projet : Modéliser une base de données pour gérer les projets de recherche du LGBC (Laboratoire de Génétique et de Biologie Cellulaire) de l'UVSQ.   On y retrouvera les différentes plateformes du laboratoire, les projets de recherche, les publications, les chercheurs, les financements, etc.**

## Les tables

- **Projet :**(**projetID**, nom_projet: str, description: str , date_debut: date, date_fin: date, *publicationID*:str)

- **Chercheur**:(**chercheurID**: str, nom: str, prenom: str, mail: str, domaine_recherche: str)

- **organisme_Financement**:(**Orga_financeID**: str, nom, type (gouvernemental, fondation privée, entreprise privée, organisations internationales, universités et instituts académiques...),pays:str)

- **Article:** (**publicationID**: str, titre: str, *chercheurID*: str, *projetID*:str, revue: str , date_publication:date, pays: str)  

- **Collaborateur_externe:** (**collaborateurID**: str,nom:str, prenom:str, labo:str, mail: str)

- **Événement:** (**EvenementID**: str, type (réunion, conférence, séminaire, formations): str, date_evenement: date, lieu: str) 

- **Stagiaire:** (**stagiaireID**:str, nom:str, prenom:str, universite:str, filiere:str)

- **stage:** (*stagiaireID*, *chercheurID*, thematique, departement, debut, fin)
- **collabore:** (*collaborateurID*, *projetID*, role)
- **financement:** (*orga_financeID*, *projetID*, date_financement, montant)
- **publie:** (*chercheurID*, *publicationID*)
- **Participe:** (*chercheurID*, *projetID*)

--------
## Contraintes d'intégrité

**Clés primaires:**
- Les clés primaires de chaque table sont soulignées
- Les clés primaires doivent être uniques

**Clés étrangères :**  y a des modifs à faire mais on les fera à la fin une fois qu'on sera sûres de notre model E/R et relationnel
- Projet (nom_Departement) est une clé étrangère de Departement (nom_Departement)
- Projet (chercheurID) est une clé étrangère de Chercheur (chercheurID)
- Projet (financementID) est une clé étrangère de Financement (financementID)
- Departement (chercheurID) est une clé étrangère de Chercheur (chercheurID)
- Chercheur (nom_Departement) est une clé étrangère de Departement (nom_Departement)
- Financement (organismeID) est une clé étrangère de Organisme_financement (organismeID)
- Publication (chercheurID) est une clé étrangère de Chercheur (chercheurID)
- Publication (projetID) est une clé étrangère de Projet (projetID)
- Publication (nom_departement) est une clé étrangère de Departement (nom_departement)
- Collaboration (chercheurID) est une clé étrangère de Chercheur (chercheurID)
- Collaboration (projetID) est une clé étrangère de Projet (projetID)
- Evenement (chercheurID) est une clé étrangère de Chercheur (chercheurID)
- Evenement (sigle du projet) est une clé étrangère de Projet (sigle du projet)
- Stagiaire (chercheurID) est une clé étrangère de Chercheur (chercheurID)
- Stagiaire (projetID) est une clé étrangère de Projet (projetID)

**Not Null**  
- Pour chaque tuple de chaque table, la clé primaire doit être Not Null

**Projet**:
- Not null: projetID, nom_projet, date_debut
- Check :La date de début d'un projet ne peut pas être ultérieure à la date de fin
- Trigger: empêche la suppression d'un projet qui a un événement de prévu

**Chercheur**:
- Not null:  chercheurID, nom, prenom, mail: str
- Check: les mails sont uniques et ont un bon format

**financement**:
- Le montant d'un financement ne peut pas être négatif

**Article**:
- Not null: titre, revue, date_publication
- Trigger: la date de publication d'un article est postérieure à la date du début du projet associé
- Check: Vérifier que le pays de la ruvue existe vraiment
- (mettre à jour publie et projet à chaque fois qu'un nouvel article est publié)

**Collaborateur_externe:** 
- Not null: nom, prenom, labo, mail
- Vérifier que le collaborateur externe ne soit pas un chercheur de notre labo (vérifier que (nom, prénom) collaborateur externe ne soit pas dans la table chercheur)

**Événement**: 
- Not null: type date_evenement, lieu
- Contrainte de validation du type d'événement: Le type d'événement doit appartenir à une liste définie

**Stagiaire:** 
- Not null: nom, prenom
- 

**Stage**:
- La date de début d'un stage ne peut pas être ultérieure à la date de fin
- Contrainte de limitation du nombre de stagiaires par chercheur
  
**Contrainte de suppression en cascade:**  
- Dans chaque table qui possède une clé primaire, la suppression d'un tuple ayant cette clé primaire dans cette table entraîne également sa suppression dans toutes les tables où elle est utilisée comme clé étrangère.
  
------------------------------------------------
## Questions:

**Organismes de financement**
- Rechercher le nombre de projets financés ainsi que la moyenne des financements de chaque organisme.
- Identifier les chercheurs qui ont participé à des projets financés par un organisme gouvernemental et comptez le nombre de projets ainsi que le montant total de financement.
- Identifiez les projets qui ont reçu des financements de plusieurs organismes différents, et affichez la liste de ces organismes pour chaque projet

**Projets**
- Trouver tous les projets qui ont à la fois des chercheurs et des collaborateurs externes impliqués.
- Donner le projet ayant reçu un financement supérieur à la moyenne des financcements, avec le montant correspondant.
- Identifier les projets qui n'ont pas encore publié de résultats
  
**Chercheurs**
- Trouver les chercheurs qui sont impliqués dans plus d'un projet et donner le nombre de projets dans lesquels ils participent.
- Rechercher les chercheurs qui ont participé à tous les projets de recherche en génétique.
- Identifier les chercheurs qui n'ont pas encore publié d'articles.
- Identifier les chercheurs qui ont supervisé des stagiaires dans un domaine de recherche donné.
- Donner les 5 chercheurs les plus productifs en termes de publications et afficher le nombre total de publications pour chacun d'eux.
- Identifiez les chercheurs qui ont changé de domaine de recherche au cours de leur carrière, et affichez les détails de leurs anciens et nouveaux domaines.

**Evénements**
- Identifier les événements auxquels ont participé à la fois des chercheurs, des collaborateurs externes et des stagiaires.
- Identifier les événements à venir
- Le nombre d'événements auxquels a participé un chercheur donné et triés par type d'événement.

**Stagiaires**
- Trouver les stagiaires qui n'ont pas encore de chercheur encadrant.
- Trouver la durée mini, max et moyenne des stages (en f° du domaine)
  
**Collaborateurs**
- Identifier les collaborateurs externes qui ont joué différents rôles dans plusieurs projets.
- Renvoyer tous les collaborateurs externes impliqués dans des projets avec un chercheur donné et donner leur rôle.

**Articles**
- Donner les articles écrits par plusieurs chercheurs et afficher la liste des chercheurs pour chaque article.
- Tous les articles écrits par un chercheur pour un projet donné



