create table chercheur ( 
    chercheurID number (4) primary key, 
    nom varchar (10) not null, 
    prenom varchar (10) not null, 
    mail varchar (40) not null unique, 
    domaine_recherche varchar(40) 
);

create table organisme_financement (  
    orga_financeID number (4) primary key,
    nom varchar (100),
    type_orga varchar (50),
    pays varchar (40)
);

create table evenement ( 
    evenementID number (4) primary key, 
    type_event varchar (20),
    nom varchar (100),
    date_debut date not null, 
    date_fin date not null, 
    lieu varchar (40) not null
);

create table stagiaire ( 
    stagiaireID number (4) primary key, 
    nom varchar (10) not null, 
    prenom varchar (10) not null, 
    mail varchar (40) not null unique, 
    universite varchar (50), 
    filiere varchar (40) 
);

create table projet ( 
    projetID number (4) primary key, 
    nom_projet char (50) not null, 
    description varchar (50), 
    date_debut date not null, 
    date_fin date,
    total_financement number
);
create table article ( 
    publicationID number (4) primary key, 
    titre varchar (70) not null, 
    revue varchar (70), 
    date_publi date not null, 
    pays varchar (40),
    projetID number(4) null,
    foreign key (projetId) references projet(projetID) on delete cascade 
);

create table encadre ( 
    stagiaireID number (4), 
    chercheurID number (4), 
    projetID number (4), 
    date_debut date, 
    date_fin date,
    gratification number (10,2),
    duree NUMBER(4) AS (date_fin - date_debut + 1),
    foreign key (stagiaireID) references stagiaire(stagiaireID) on delete cascade, 
    foreign key (chercheurID) references chercheur(chercheurID) on delete cascade, 
    foreign key (projetID) references projet(projetID) on delete cascade
);

create table stagiaire_assiste ( 
    stagiaireID number (4), 
    evenementID number (4), 
    foreign key (stagiaireID) references stagiaire(stagiaireID) on delete cascade, 
    foreign key (evenementID) references evenement(evenementID) on delete cascade 
);

create table chercheur_assiste ( 
    chercheurID number (4), 
    evenementID number (4), 
    foreign key (evenementID) references evenement(evenementID) on delete cascade, 
    foreign key (chercheurID) references chercheur(chercheurID) on delete cascade 
);

create table financement ( 
    orga_financeID number (4), 
    projetID number (4), 
    date_financement date, 
    montant number (10), 
    foreign key (orga_financeID) references organisme_financement (orga_financeID) on delete cascade, 
    foreign key (projetID) references projet(projetID) on delete cascade 
);

create table publie ( 
    chercheurID number (4), 
    publicationID number (4), 
    foreign key (chercheurID) references chercheur(chercheurID) on delete cascade, 
    foreign key (publicationID) references article(publicationID) on delete cascade 
);

create table participe ( 
    chercheurID number (4), 
    projetID number (4), 
    foreign key (chercheurID) references chercheur(chercheurID) on delete cascade, 
    foreign key (projetID) references projet(projetID) on delete cascade 
);

Create table Invitations (
	inviteID number (4),
    mail varchar (40) not null unique, 
    message varchar (60)
);





