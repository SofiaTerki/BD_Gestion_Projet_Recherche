/*1-Rechercher le nombre de projets financés ainsi que la moyenne des financements de chaque
organisme*/
select o.nom, count(distinct projetID) as nb_projets_financés, sum(montant) as total_financement 
From Organisme_financement o, financement f
where o.orga_financeID = f.orga_financeID
Group by o.nom;

/*2-Identifier les chercheurs qui ont participé à des projets financés par un organisme
gouvernemental et comptez le nombre de projets ainsi que le montant total de financement.*/
Select c.chercheurID, count(p.projetID) as nbr_projets, sum(f.montant) as montant_total
From chercheur c, participe p, financement f, organisme_financement o
Where c.chercheurID = p.chercheurID and p.projetID = f.projetID 
    and f.orga_financeID = o.orga_financeID
	and o.type_orga = 'Gouvernemental'
Group by c.chercheurID;

/*3-Identifiez les projets qui ont reçu des financements de plusieurs organismes différents, et
affichez la liste de ces organismes pour chaque projet.*/

SELECT p.projetID, COUNT(DISTINCT o.orga_financeID) AS nombre_organisme_financement,
LISTAGG(o.nom, ', ') WITHIN GROUP (ORDER BY o.orga_financeID) AS liste_organismes
FROM projet p, financement f, organisme_financement o
WHERE p.projetID = f.projetID AND f.orga_financeID = o.orga_financeID
GROUP BY p.projetID
HAVING COUNT(DISTINCT o.orga_financeID) > 1;

/*4-Trouver tous les projets qui ont à la fois des chercheurs et des stagiaires impliqués. 
Et donner le nombre de stagiaires et de chercheurs impliqués dans chaque projet*/
SELECT p.projetID,
COUNT(DISTINCT e.stagiaireID) AS nbr_stagiaires,
COUNT(DISTINCT pa.chercheurID) AS nbr_chercheurs
FROM projet p ,participe pa , encadre e where  p.projetID = pa.projetID AND p.projetID = e.projetID
GROUP BY p.projetID;


/*5-Donner les projets ayant reçu un financement supérieur à la moyenne des financements, avec le
montant correspondant.*/
SELECT projetID, SUM(montant) AS montant_total
FROM financement 
GROUP BY projetID
HAVING SUM(montant) > (SELECT AVG(total_montant)FROM ( SELECT SUM(montant) AS total_montant FROM financement
        			   GROUP BY projetID) average );

/*6-Identifier les projets pour lesquels il n'y a pas eu encore d'articles publiés*/
/*Avec jointure externe mais marche pas avec notre schéma actuel*/
Select p.projetID, p.nom_projet
From projet p
Left join article a on p.projetID = a.projetID
Where a.projetID Is Null;


/*7-Affichez la liste des projets et le nombre de chercheurs et de stagiaires associés à chacun d'eux.*/
SELECT p.projetID,COUNT(DISTINCT e.stagiaireID) AS nbr_stagiaires,COUNT(DISTINCT pa.chercheurID) AS nbr_chercheurs
FROM projet p
LEFT JOIN encadre e ON p.projetID = e.projetID
LEFT JOIN participe pa ON p.projetID = pa.projetID
GROUP BY p.projetID;


/*8-Rechercher les chercheurs qui ont participé à tous les projets de recherche en génétique*/
/*Méthode 1: algèbre*/
Select c.chercheurID, c.nom, c.prenom
From chercheur c
Where not exists(Select *
    		 From Projet pr
    		 where description = 'Génétique'
    		 and Not exists ( Select *
    				  From participe p
    				  Where p.chercheurID = c.chercheurID
    				  and pr.projetID = p.projetID));
/*Méthode 2: Agrégats*/
SELECT c.chercheurID, c.nom, c.prenom
FROM chercheur c, participe p, projet pr
Where c.chercheurID = p.chercheurID and p.projetID = pr.projetID
and pr.description = 'Génétique'
GROUP BY c.chercheurID, c.nom, c.prenom
HAVING COUNT(DISTINCT pr.projetID) = (SELECT COUNT(*) FROM projet WHERE description = 'Génétique');

/*9-Donner les 5 chercheurs les plus productifs en termes de publications et afficher le nombre total
de publications pour chacun d'eux.*/
SELECT *
FROM ( SELECT c.chercheurID,COUNT(p.publicationID) AS nbr_publications,DENSE_RANK() OVER (ORDER BY COUNT(p.publicationID) DESC) AS classement
    FROM publie p
    JOIN chercheur c ON p.chercheurID = c.chercheurID
    GROUP BY c.chercheurID
    ORDER BY nbr_publications DESC)
WHERE classement <= 5;

/*10-Identifiez les chercheurs qui ont encadré le plus grand nombre de stagiaires (+ de 5 stagiaires)*/
Select c.chercheurID
From chercheur c, encadre e
Where c.chercheurID = e.chercheurID
Having count(e.stagiaireID) = (select max (nbr_stagiaires) from(select count(e.stagiaireID) as nbr_stagiaires
    							From encadre e
								Where c.chercheurID = e.chercheurID
    							Group by chercheurID))
Group by c.chercheurID;


/*12-Trouver les chercheurs qui n'ont jamais publié d'articles mais ont participé à plus de trois projets
financés.*/

/*Chercheurs n'ayant jamais publié d'articles*/
Select chercheurID
From chercheur c
Where not exists (	Select p.chercheurID
    				From publie p
    				WHERE p.chercheurID = c.chercheurID)
Intersect 
/*Chercheurs participant à plu de 3 projets financés*/
Select p.chercheurID
From participe p, (	Select f.projetID
					From financement f) p_finance
Where p.projetID = p_finance.projetID
Group by p.chercheurID
Having count(p.chercheurID) > 3;

/*13-Identifier les chercheurs qui ont collaboré sur des projets financés à la fois par des organisations
gouvernementales et des entreprises privées.*/
Select chercheurID
From participe p,(	Select f.projetID
					From financement f, organisme_financement o
					Where f.orga_financeID = o.orga_financeID
					and o.type_orga = 'Gouvernemental'
						Intersect
					Select f.projetID
					From financement f, organisme_financement o
					Where f.orga_financeID = o.orga_financeID
					and o.type_orga = 'Entreprise privée') temp
Where p.projetID = temp.projetID

/*14-Identifier les événements auxquels ont participé à la fois des chercheurs et des stagiaires.*/
SELECT e.evenementID, e.nom AS nom_evenement, e.date_debut, e.date_fin
FROM evenement e
WHERE e.evenementID IN ( SELECT s.evenementID FROM stagiaire_assiste s
    			INTERSECT
    			SELECT c.evenementID FROM chercheur_assiste c);


/*15-Identifier les événements à venir*/
Select *
From evenement
Where date_event > sysdate;

/*/*16-Trouver la durée min, max et moyenne des stages en fonction de la spécialité du chercheur
encadrant. Une vue duree_stage a été préalablement créée dans le fichier "Create_view.sql"*/
Select c.domaine_recherche, min(duree) as duree_min, max(duree) as max_duree, avg(duree) as duree_moy
From duree_stage d, chercheur c
Where d.chercheurID = c.chercheurID
Group by c.domaine_recherche;*/

/*17-Donner les articles écrits par plusieurs chercheurs et afficher la liste des chercheurs pour chaque
article*/

SELECT a.publicationID, LISTAGG(p.chercheurID, ', ') WITHIN GROUP (ORDER BY p.chercheurID) AS chercheurs_associes
FROM article a
JOIN publie p ON a.publicationID = p.publicationID
GROUP BY a.publicationID
HAVING COUNT(p.chercheurID) > 1;

/*18-d’afficher la nième et la nième +1 publications les plus récentes 
la table article. Le nombre n est un paramètre saisi par l’utilisateur.*/

SET SERVEROUTPUT ON /*cette commande permet d'afficher les messages générés par les commandes PL/SQL telles que DBMS_OUTPUT.PUT_LINE.*/
prompt 'donner la valeur de n'
accept num

DECLARE 
    n NUMBER := &num;  
    CURSOR n_publi IS
        SELECT publicationID, titre, revue
        FROM article a
        ORDER BY a.date_publi DESC;
    IDpubli article.publicationID%TYPE;
    T article.titre%TYPE;
    R article.revue%TYPE;
BEGIN
    OPEN n_publi;
    LOOP
        FETCH n_publi INTO IDpubli, T, R;
        n := n - 1;
        EXIT WHEN (n = 0 OR n_publi%NOTFOUND);
    END LOOP;

    IF (n_publi%FOUND) THEN 
        DBMS_OUTPUT.put_line('PublicationID: ' || IDpubli || ', Titre: ' || T || ', Revue: ' || R);
        FETCH n_publi INTO IDpubli, T, R;
        IF (n_publi%FOUND) THEN
            DBMS_OUTPUT.put_line('PublicationID: ' || IDpubli || ', Titre: ' || T || ', Revue: ' || R);
        END IF;
    END IF;

    CLOSE n_publi;
END;
/

