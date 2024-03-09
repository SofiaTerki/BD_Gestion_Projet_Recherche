/*view total_financement*/
CREATE ROLE service_finance;
GRANT service_finance TO DAF;
GRANT service_finance TO compatable;
GRANT service_finance TO Responsable_des_subventions ;
GRANT SELECT ON total_financements TO service_finance;

/*view liste_participant à un evenement*/
Create role membre_labo
GRANT SELECT ON liste_participant TO membre_labo;

/*view stage_gratification*/
CREATE ROLE administration;
GRANT administration TO RH;
GRANT administration TO assistant_RH;
GRANT SELECT ON stage_gratification TO administration;
GRANT SELECT ON stage_gratification TO service_finance;

/*Vue pour le nombre de stagiaires regroupés par université*/
CREATE ROLE chercheurs_referents
GRANT chercheurs_referents TO chercheur_1;
GRANT chercheurs_referents TO chercheur_13;
GRANT chercheurs_referents TO chercheur_21;
GRANT chercheurs_referents TO chercheur_28;
GRANT chercheurs_referents TO chercheur_9;
GRANT chercheurs_referents TO chercheur_36;
GRANT chercheurs_referents TO chercheur_3;
GRANT chercheurs_referents TO chercheur_6;
GRANT chercheurs_referents TO chercheur_31;
GRANT chercheurs_referents TO chercheur_4;
GRANT chercheurs_referents TO chercheur_15;
GRANT chercheurs_referents TO chercheur_22;
GRANT chercheurs_referents TO chercheur_19;
GRANT chercheurs_referents TO chercheur_34;
GRANT chercheurs_referents TO chercheur_2;
GRANT chercheurs_referents TO chercheur_11;
GRANT chercheurs_referents TO chercheur_24;
GRANT chercheurs_referents TO chercheur_7;
GRANT chercheurs_referents TO chercheur_17;
GRANT chercheurs_referents TO chercheur_42;

GRANT SELECT ON nbrstagiaire_universite TO administration;
GRANT SELECT ON nbrstagiaire_universite TO service_finance;

/*nbr_chercheur_article */
GRANT SELECT ON nbr_chercheur_article  TO membre_labo;

/personnes qui peuvent ajouter des stagiaires et des chercheurs a un evenement ,
et donc d'envoyer un mail d'invitation*/
GRANT INSERT, SELECT, UPDATE, DELETE ON chercheur_assiste TO administration;













