/*Vue regroupant les projets et le montant total de financement pour chaque projet*/
Create view total_financements
(projetID, total)
as 
Select p.projetID, sum(f.montant)
From projet p, financement f
Where p.projetID = f.projetID(+)
Group by p.projetID;
 
/*Vue qui donne la liste des participants à un événement*/ 
CREATE VIEW liste_participants
AS 
SELECT e.evenementId AS id_evenement, 
       c.nom AS id_chercheur, 
       s.nom AS id_stagiaire
FROM evenement e, chercheur_assiste ca, stagiaire_assiste sa, chercheur c, stagiaire s
where e.evenementID = ca.evenementID
      and e.evenementID = sa.evenementID
      and ca.chercheurID = c.chercheurID
      and sa.stagiaireID = s.stagiaireID;


/*Vue des stagiaires ayant perçu une gratification*/
Create view stage_gratification
(id_stagiaire, nom_stagiaire, prenom_stagiaire, duree_stage, gratification_stage)
As
Select s.stagiaireID as id_stagiaire , 
       s.nom as nom_stagiaire, 
       s.prenom as prenom_stagiaire, 
       e.duree as duree_stage
From stagiaire s
Join encadre e on s.stagiaireID= e.stagiaireID
Where gratification is not null;

/*Vue pour le nombre de stagiaires regroupés par université*/
Create view nbrstagiaire_universite
(nom_universite, nombre_stagiaires)
As
Select s.universite as nom_universite , count(s.stagiaireID)as nombre_stagiaires
From stagiaire s 
Group By s.universite;


/*Vue qui donne le nom et le nbr de chercheurs impliqués pour chaque article*/
Create view nbr_chercheur_article 
As
Select a.publicationID As articleID, a.titre As nom_article, Count(p.chercheurID) As nbr_chercheurs
From article a
Join publie p On a.publicationID = p.publicationID
Group By a.publicationID, a.titre;
