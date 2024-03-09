from faker import Faker
import random
import string
import csv 


###CHERCHEURS

# Liste de domaines de recherche en biologie
domaines_biologie = ['génétique', 'physiologie', 'écologie', 'biologie moléculaire', 'biochimie', 'biologie cellulaire', 'microbiologie', 'neurobiologie', 'biologie végétale', 'biologie animale']

def generate_chercheur_tuples(file_name,num_tuples=41):
  fake = Faker()
  with open(file_name, mode='w', newline='') as file:
    writer = csv.writer(file, delimiter=';',quoting=csv.QUOTE_NONNUMERIC, quotechar= "'")
    writer.writerow(['chercheurID', 'nom', 'prenom', 'mail', 'domaine_recherche'])
  
    for i in range(num_tuples):
      chercheur_id = str(i)
      nom = fake.last_name()
      prenom = fake.first_name()
      mail = prenom +"."+nom+"@labo_bio.fr"
      domaine_recherche = random.choice(domaines_biologie)
      writer.writerow([chercheur_id, nom, prenom, mail, domaine_recherche])


# Utilisation de la fonction pour générer 40 chercheurs

generate_chercheur_tuples("chercheurs.csv")

###ORGANISMES FINANCEMENT
# Dictionnaire des organismes de financement
organismes_finance= [
    {"nom": "Fondation pour la Recherche en Biologie", "type": "fondation privée", "pays":"France"},
    {"nom": "Agence Nationale de la Recherche", "type": "gouvernemental", "pays": "France"},
    {"nom": "Biotech Solutions", "type": "entreprise privée", "pays": "États-Unis"},
    {"nom": "Institut Max Planck de Biologie Moléculaire", "type": "institut académique", "pays": "Allemagne"},
    {"nom": "Programme Mondial pour la Protection de la Biodiversité", "type": "organisations internationales", "pays": "International"},
    {"nom": "Fondation pour la Recherche en Génétique", "type": "fondation privée", "pays": "Canada"},
    {"nom": "CNRS (Centre National de la Recherche Scientifique)", "type": "organisme public", "pays": "France"},
    {"nom": "INRA (Institut National de la Recherche Agronomique)", "type": "organisme public", "pays": "France"},
    {"nom": "BioGen Corporation", "type": "entreprise privée", "pays": "États-Unis"},
    {"nom": "Nature Research Labs", "type": "entreprise privée", "pays": "International"},
    {"nom": "Genomic Innovations", "type": "entreprise privée", "pays": "Canada"},
    {"nom": "International Foundation for Biological Research", "type": "fondation privée", "pays": "International"},
    {"nom": "Ministère de la Recherche Scientifique", "type": "gouvernemental", "pays": "France"},
    {"nom": "Department of Biology, USA", "type": "gouvernemental", "pays": "États-Unis"}
]

def generate_organisme_financement_tuples(file_name, num_tuples=10):
  fake = Faker()
  with open(file_name, mode='w', newline='') as file:
      writer = csv.writer(file, delimiter=';', quoting=csv.QUOTE_NONNUMERIC, quotechar="'")
      writer.writerow(['Orga_financeID', 'nom', 'type', 'pays'])

      for i in range(num_tuples):
          orga_finance_id = f"ORG{i}"
          organisme = random.choice(organismes_finance)
          nom = organisme["nom"]
          type_organisme = organisme["type"]
          pays = organisme["pays"]
          writer.writerow([orga_finance_id, nom, type_organisme, pays])

# Utilisation de la fonction pour générer 40 organismes de financement
generate_organisme_financement_tuples("organismes_financement.csv", 40)


###STAGIAIRE
# Liste d'universités françaises 
universites_francaises = [
    "Sorbonne Université",
    "Université Paris-Saclay",
    "Université Paris-Cité,
    "Université d'Evry",
    "Université de Strasbourg",
    "Université de Bordeaux",
    "Aix-Marseille Université",
    "Université de Lille",
    "Université de Lyon",
    "UVSQ",
    "Université de Rouen"
]

# Liste de filières dans le domaine de la biologie
filieres_biologie = [
    "Biologie moléculaire",
    "Génétique",
    "Biotechnologie",
    "Écologie",
    "Physiologie",
    "Biochimie",
    "Microbiologie",
    "Neurobiologie"
]

def generate_stagiaire_tuples(file_name, num_tuples=10):
    fake = Faker()
    with open(file_name, mode='w', newline='') as file:
        writer = csv.writer(file, delimiter=';', quoting=csv.QUOTE_NONNUMERIC, quotechar="'")
        writer.writerow(['stagiaireID', 'nom', 'prenom', 'universite', 'filiere'])

        for i in range(num_tuples):
            stagiaire_id = f"STG{i}"
            nom = fake.last_name()
            prenom = fake.first_name()
            universite = random.choice(universites_francaises)
            filiere = random.choice(filieres_biologie)
            mail = prenom +"."+nom+"@université.fr"
            writer.writerow([stagiaire_id, nom, prenom, mail, universite, filiere])

# Utilisation de la fonction pour générer 10 stagiaires
generate_stagiaire_tuples("stagiaires.csv", 10)

###PROJETS
projets_biologie_moleculaire = {
    "L’emploi de la daphnie pour tester la toxicité de différentes molécules pouvant servir comme médicaments.": "Biologie moléculaire",
    "L’implication de la méthylation de l’ADN dans l’expression des gènes.": "Biologie moléculaire",
    "La caractérisation de mutations du gène P53 dans le développement de cancers.": "Biologie moléculaire",
    "La stimulation des macrophages par les échinacées.": "Biologie moléculaire",
    "Le gène PERKI favorise la croissance des plantes Arabidopsis thaliana.": "Biologie moléculaire",
    "L’étude de l’effet Pasteur sur la fermentation par les levures.": "Microbiologie",
    "L’utilisation de la bactérie Escherichia coli comme détecteur d’éléments polluants.": "Microbiologie",
    "La biolixiviation et l’industrie minière.": "Microbiologie",
    "La biosorption et la bioaccumulation des métaux toxiques par des bactéries.": "Microbiologie",
    "RÔLES DE TRIM28, UN PARTENAIRE DE SOX9 DANS LA DIFFÉRENCIATION SEXUELLE.": "Génétique, Développement et Pathologie de la Gonade",
    "IMPACT DE L'EXPOSITION IN UTERO AUX AINS ET À L'ACÉTAMINOPHÈNE SUR LE DÉVELOPPEMENT ET LA MATURATION DES TESTICULES.": "Génétique, Développement et Pathologie de la Gonade",
    "DISSECTION DU DOUBLE RÔLE DES PIARNS CHEZ LA DROSOPHILE.": "ARN non codants, épigénétique et stabilité génomique",
    "MÉCANISMES DE CONTRÔLE DES TE BASÉS SUR L'ORGANISATION DE LA CHROMATINE.": "ARN non codants, épigénétique et stabilité génomique",
    "DÉMÊLER LES CONSÉQUENCES DE L'INSERTION D'ÉLÉMENTS TRANSPOSABLES SUR LA STRUCTURE ET LA FONCTION DU GÉNOME.": "ARN non codants, épigénétique et stabilité génomique",
    "DÉTECTION ET RÉGULATION DES HYBRIDES ADN/ARN CYTOSOLIQUES.": "Bases Moléculaires de l’Inflammation",
    "MOLECULAR BASIS OF THE CROSS-TALK BETWEEN CHRONIC INFLAMMATION AND CANCER* ERG STARTING GRANT (CRIC; GA #637763).": "Bases Moléculaires de l’Inflammation",
    "NOUVELLES VOIES DE DÉTECTION DES ADNS.": "Bases Moléculaires de l’Inflammation",
    "INFLAMMATION ET MÉTABOLISME.": "Bases Moléculaires de l’Inflammation",
    "CONTRÔLE CHROMATINIEN DES RÉPONSES INFLAMMATOIRES.": "Bases Moléculaires de l’Inflammation",
    "L'ocytocine comme facteur clé dans le stress émotionnel chez des patients souffrant de la maladie d'Alzheimer.": "Neurosciences",
    "Identification de marqueurs précoces de vulnérabilité, de diagnostic et de neuro-progression des troubles de l’humeur.": "Neurosciences",
    "Etude prospective d’imagerie fonctionnelle sur l’auto-évaluation des mécanismes de troubles de conversion.": "Neurosciences",
    "Macrophage migration inhibitory factor and neuroinflammation in early Alzheimer’s Disease.": "Neurosciences",
    "MICA, UN NOUVEAU GÈNE POUR PRÉDIRE LE SUCCÈS OU L’ÉCHEC D’UNE GREFFE DE REIN": "Génétique",
  
}


###PARTICIPE
from faker import Faker
import random
import string
import csv 

def generate_participe_tuples(file_name,num_tuples, nbr_chercheurs, nbr_projets):
  with open(file_name, mode='w', newline='') as file:
    writer = csv.writer(file, delimiter=';',quoting=csv.QUOTE_NONNUMERIC, quotechar= "'")
    writer.writerow(['chercheurID', 'projetID'])

    for _ in range(num_tuples):
      chercheur_id = random.randint(0,nbr_chercheurs)
      projetID = random.randint(0,nbr_projets)
      writer.writerow([chercheur_id, projetID])

# Utilisation de la fonction pour générer 100 participations
generate_participe_tuples("participe.csv", 100, 41,10)

##FINANCEMENT
# Liste des identifiants de projets existants 
projets_existants = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]

# Liste des identifiants d'organismes de financement existants 
organismes_financement_existants = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

# Génération aléatoire des données pour la table de financement
financement_projet = []

for projet in projets_existants:
    # Sélection aléatoire d'au moins un organismes de financement pour chaque projet
    organismes_financement = random.sample(organismes_financement_existants, random.randint(2, len(organismes_financement_existants)))
    
    # Création des tuples pour la table de financement en liant chaque projet à ses organismes de financement
    for organisme in organismes_financement:
        financement_projet.append((projet, organisme))

# Affichage des données générées aléatoirement
for data in financement_projet:
    print(data)


