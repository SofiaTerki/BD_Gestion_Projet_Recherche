/*1- Trigger qui permet d'envoyer un mail aux chercheurs invités à un événement dès 
qu'un nouveau tuple est inséré dans la table chercheur_assiste.*/
CREATE SEQUENCE sq1 START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE PROCEDURE EnvoiMailChercheurAssiste (
    p_chercheurID IN NUMBER,
    p_evenementID IN NUMBER,
    p_message IN VARCHAR2
)
IS
    v_mail VARCHAR2(40);
    v_date_evenement DATE;
BEGIN
    SELECT mail INTO v_mail FROM chercheur WHERE chercheurID = p_chercheurID;
    
    SELECT date_debut INTO v_date_evenement
    FROM evenement
    WHERE evenementID = p_evenementID;
    
    IF v_date_evenement > TRUNC(SYSDATE) THEN
        INSERT INTO Invitations (inviteID, mail, message)
        VALUES (sq1.NEXTVAL, v_mail, p_message); 

        DBMS_OUTPUT.PUT_LINE('Invitation envoyée à : ' || v_mail);
    ELSE
        DBMS_OUTPUT.PUT_LINE('L événement est déjà passé.');
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Chercheur non trouvé.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Une erreur est survenue : ' || SQLERRM);
END;
/

CREATE OR REPLACE TRIGGER EnvoiMailChercheurAssisteTrigger
AFTER INSERT ON chercheur_assiste
FOR EACH ROW
DECLARE
    v_date_evenement DATE;
    v_message VARCHAR2(200);
BEGIN
    SELECT date_debut INTO v_date_evenement
    FROM evenement
    WHERE evenementID = :NEW.evenementID;

    v_message := 'Vous participez à l événement : ' || :NEW.evenementID || '. Date : ' || TO_CHAR(v_date_evenement, 'DD-MON-YYYY');

    EnvoiMailChercheurAssiste(:NEW.chercheurID, :NEW.evenementID, v_message);
END;
/

/*2- Trigger qui permet d'envoyer un mail aux stagiaires invités à un événement 
dès qu'un nouveau tuple est inséré dans la table stagiaire_assiste.*/
/*Invitation stagiaire*/	

CREATE OR REPLACE PROCEDURE EnvoiMailstagiaire (
    p_stagiaireID IN NUMBER,
    p_evenementID IN NUMBER,
    p_message IN VARCHAR2
)
IS
    v_mail VARCHAR2(40);
BEGIN
    SELECT mail INTO v_mail FROM stagiaire WHERE stagiaireID = p_stagiaireID;
    
    DECLARE
        v_date_evenement DATE;
    BEGIN
        SELECT date_debut INTO v_date_evenement
        FROM evenement
        WHERE evenementID = p_evenementID;

        IF v_date_evenement > TRUNC(SYSDATE) THEN
            INSERT INTO Invitations (inviteID, mail, message)
            VALUES (sq1.NEXTVAL, v_mail, p_message); 
            DBMS_OUTPUT.PUT_LINE('Invitation envoyée à : ' || v_mail);
        ELSE
            DBMS_OUTPUT.PUT_LINE('L événement est déjà passé.');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Stagiaire non trouvé.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Une erreur est survenue : ' || SQLERRM);
    END;
END;
/


CREATE OR REPLACE TRIGGER EnvoiMailstagiaireTrigger
AFTER INSERT ON stagiaire_assiste
FOR EACH ROW
DECLARE
    v_date_evenement DATE;
    v_message VARCHAR2(200);
BEGIN
    SELECT date_debut INTO v_date_evenement
    FROM evenement
    WHERE evenementID = :NEW.evenementID;

    v_message := 'Vous participez à l événement : ' || :NEW.evenementID || '. Date : ' || TO_CHAR(v_date_evenement, 'DD-MON-YYYY');

    EnvoiMailstagiaire(:NEW.stagiaireID, :NEW.evenementID, v_message);
END;
/


/*3- Trigger qui permet de mettre à jour le montant total des financements d’un projet 
(dans l'attricut total financement de la table projet) quand un nouveau financement de ce projet est ajouté dans la table financement*/
create or replace trigger total after insert on financement for each row
Begin
	update projet set total_financement = NVL(total_financement, 0) + :new.montant + (:new.montant)
    	where projetID = :new.projetID;       
end;
/


/*4-Trigger qui permet d'attribuer une gratification de stage pour les étudiants effectuant un stage de plus 
de 2 mois (soit à partir du 44e jour de stage = 309e heure de stage) à raisonde 4,05€/ h*/
Create or replace function heures_stage (duree_jours in number) return number is
	nbr_heures number (10,2);
begin
  	nbr_heures := (duree_jours * 22)/30 * 7 ;
  return nbr_heures;
end heures_stage;
/
	
Create or replace trigger gratification_stage
Before insert on encadre
For each row
Declare
    taux_horaire CONSTANT NUMBER := 4.05;
    heures NUMBER(5);
Begin
    Select heures_stage(:new.duree) Into heures
    From dual; -- Utilisation de DUAL pour éviter la mutation de la table

    If heures >= 309 then
        :new.gratification := heures * taux_horaire;
    Else
        :new.gratification := NULL; -- Ou une autre valeur par défaut
    End if;
End;
/
/*5-Trigger qui permet d'augmenter les financements de 5% pour les projets en cours dont le nombre de publications est supérieur à 3*/
Create or replace trigger financement_5 after insert or update on financement for each row
declare
	nbr_publi number(3);
begin 
	select count(distinct publicationID) into nbr_publi
	from article a
	where a.projetID = :new.projetID;
	if nbr_publi>3 then
		update financement set montant=montant*1.05
		where projetID = :new.projetID;
    end if;
end;
/
	
/*6-trigger qui permet de verifier si un stagiaire assiste bien a un evenement pendant la durée de son stage*/
create or replace trigger t2 
before insert or update on stagiaire_assiste
for each row 
declare
debut_stage DATE;
fin_stage DATE;
date_evenement DATE;
BEGIN
select date_debut ,date_fin into debut_stage ,fin_stage 
from encadre
where stagiaireID=:new.stagiaireID;
select date_debut into date_evenement
from evenement 
where evenementID=:new.evenementID;

if (fin_stage<date_evenement) AND (debut_stage>date_evenement)
then RAISE_APPLICATION_ERROR(-20001, 'Le stagiaire assiste à un événement en dehors de la durée de son stage');
        END IF;
END;
/


