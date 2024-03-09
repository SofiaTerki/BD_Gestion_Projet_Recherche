/*Remarque: au lieu de créer un fichier pour chaque table nous avons tout mis dans ce fichier pour éviter d'avoir trop de fichiers*/
/*chercheur*/
LOAD DATA
INFILE *
APPEND
INTO TABLE chercheur
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(chercheurID, nom, prenom, mail, domaine_recherche)
BEGINDATA
1, 'Dupont', 'Marie', 'marie.dupont@labobio.fr', 'Biologie Moléculaire'
2, 'Leroy', 'Pierre', 'pierre.leroy@labobio.fr', 'Biologie Cellulaire'
3, 'Martin', 'Sophie', 'sophie.martin@labobio.fr', 'Génétique'
4, 'Lambert', 'Thomas', 'thomas.lambert@labobio.fr', 'Biologie Marine'
5, 'Robert', 'Laura', 'laura.robert@labobio.fr', 'Physiologie'
6, 'Blanc', 'Julien', 'julien.blanc@labobio.fr', 'Biologie Végétale'
7, 'Roux', 'Léa', 'lea.roux@labobio.fr', 'Microbiologie'
8, 'Lefevre', 'Paul', 'paul.lefevre@labobio.fr', 'Écologie'
9, 'Petit', 'Emma', 'emma.petit@labobio.fr', 'Biochimie'
10, 'Moreau', 'Lucas', 'lucas.moreau@labobio.fr', 'Neurobiologie'
11, 'Andre', 'Manon', 'manon.andre@labobio.fr', 'Immunologie'
12, 'Dubois', 'Hugo', 'hugo.dubois@labobio.fr', 'Biologie Animale'
13, 'Lemoine', 'Inès', 'ines.lemoine@labobio.fr', 'Biologie Moléculaire'
14, 'Girard', 'Nathan', 'nathan.girard@labobio.fr', 'Physiologie'
15, 'Paris', 'Chloe', 'chloe.paris@labobio.fr', 'Biologie Marine'
16, 'Laurent', 'Axel', 'axel.laurent@labobio.fr', 'Biologie Végétale'
17, 'Roy', 'Sarah', 'sarah.roy@labobio.fr', 'Microbiologie'
18, 'Gauthier', 'Mathis', 'mathis.gauthier@labobio.fr', 'Biologie Animale'
19, 'Legrand', 'Eva', 'eva.legrand@labobio.fr', 'Biochimie'
20, 'Leroux', 'Yanis', 'yanis.leroux@labobio.fr', 'Écologie'
21, 'Fournier', 'Lucie', 'lucie.fournier@labobio.fr', 'Biologie Moléculaire'
22, 'Lefort', 'Antoine', 'antoine.lefort@labobio.fr', 'Biologie Cellulaire'
23, 'Bertrand', 'Mia', 'mia.bertrand@labobio.fr', 'Génétique'
24, 'Giraud', 'Emma', 'emma.giraud@labobio.fr', 'Immunologie'
25, 'Marchand', 'Hugo', 'hugo.marchand@labobio.fr', 'Biologie Animale'
26, 'Picard', 'Léa', 'lea.picard@labobio.fr', 'Biochimie'
27, 'Renard', 'Paul', 'paul.renard@labobio.fr', 'Écologie'
28, 'Berger', 'Emma', 'emma.berger@labobio.fr', 'Biologie Moléculaire'
29, 'Collet', 'Lucas', 'lucas.collet@labobio.fr', 'Physiologie'
30, 'Roussel', 'Zoé', 'zoe.roussel@labobio.fr', 'Biologie Marine'
31, 'Caron', 'Louis', 'louis.caron@labobio.fr', 'Biologie Végétale'
32, 'Lefevre', 'Camille', 'camille.lefevre@labobio.fr', 'Microbiologie'
33, 'Lemoine', 'Hugo', 'hugo.lemoine@labobio.fr', 'Neurobiologie'
34, 'Martinez', 'Eva', 'eva.martinez@labobio.fr', 'Immunologie'
35, 'Lefevre', 'Antoine', 'antoine.lefevre@labobio.fr', 'Biologie Animale'
36, 'Bertrand', 'Léa', 'lea.bertrand@labobio.fr', 'Biochimie'
37, 'Leroux', 'Paul', 'paul.leroux@labobio.fr', 'Écologie'
38, 'Dupuis', 'Emma', 'emma.dupuis@labobio.fr', 'Biologie Moléculaire'
39, 'Lemoine', 'Nathan', 'nathan.lemoine@labobio.fr', 'Physiologie'
40, 'Girard', 'Chloe', 'chloe.girard@labobio.fr', 'Biologie Marine'
41, 'Leclerc', 'Axel', 'axel.leclerc@labobio.fr', 'Biologie Végétale'
42, 'Roy', 'Sarah', 'sarahh.roy@labobio.fr', 'Microbiologie'
43, 'Gauthier', 'Mathis', 'mathiss.gauthier@labobio.fr', 'Biologie Animale'


/*Stagiaire*/
LOAD DATA
INFILE *
APPEND
INTO TABLE Stagiaire
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(stagiareID, nom, prenom, mail, universite, filiere)
BEGINDATA
1, 'Leclerc', 'Lucie', 'lucie.leclerc@u-psud.fr', 'Université Paris-Sud', 'Biologie Moléculaire'
2, 'Roux', 'Alex', 'alex.roux@univ-lyon.fr', 'Université de Lyon', 'Biologie Cellulaire'
3, 'Fournier', 'Eva', 'eva.fournier@unistra.fr', 'Université de Strasbourg', 'Génétique'
4, 'Girard', 'Hugo', 'hugo.girard@univ-lille.fr', 'Université de Lille', 'Biologie Marine'
5, 'Lefevre', 'Léa', 'lea.lefevre@sorbonne-universite.fr', 'Sorbonne Université', 'Physiologie'
6, 'Martinez', 'Emma', 'emma.martinez@univ-nantes.fr', 'Université de Nantes', 'Biologie Végétale'
7, 'Leroux', 'Antoine', 'antoine.leroux@u-bordeaux.fr', 'Université de Bordeaux', 'Microbiologie'
8, 'Bertrand', 'Chloe', 'chloe.bertrand@univ-grenoble-alpes.fr', 'Université Grenoble Alpes', 'Biologie Animale'
9, 'Dupont', 'Mathis', 'mathis.dupont@umontpellier.fr', 'Université de Montpellier', 'Biochimie'
10, 'Lemoine', 'Paul', 'paul.lemoine@univ-rennes1.fr', 'Université de Rennes 1', 'Écologie'
11, 'Gauthier', 'Eva', 'eva.gauthier@univ-amu.fr', 'Aix-Marseille Université', 'Biologie Moléculaire'
12, 'Roy', 'Nathan', 'nathan.roy@ut3.fr', 'Université Toulouse III - Paul Sabatier', 'Physiologie'
13, 'Martin', 'Emma', 'emma.martin@u-psud.fr', 'Université Paris-Sud', 'Biologie Moléculaire'
14, 'Dubois', 'Hugo', 'hugo.dubois@univ-lyon.fr', 'Université de Lyon', 'Biologie Cellulaire'
15, 'Moreau', 'Lucas', 'lucas.moreau@unistra.fr', 'Université de Strasbourg', 'Génétique'
16, 'Lefort', 'Inès', 'ines.lefort@univ-lille.fr', 'Université de Lille', 'Biologie Marine'
17, 'Blanc', 'Yanis', 'yanis.blanc@sorbonne-universite.fr', 'Sorbonne Université', 'Physiologie'
18, 'Petit', 'Chloe', 'chloe.petit@univ-nantes.fr', 'Université de Nantes', 'Biologie Végétale'
19, 'Roux', 'Axel', 'axel.roux@u-bordeaux.fr', 'Université de Bordeaux', 'Microbiologie'
20, 'Leroux', 'Sarah', 'sarah.leroux@univ-grenoble-alpes.fr', 'Université Grenoble Alpes', 'Biologie Animale'
21, 'Girard', 'Mathis', 'mathis.girard@umontpellier.fr', 'Université de Montpellier', 'Biochimie'
22, 'Martin', 'Eva', 'eva.martin@univ-rennes1.fr', 'Université de Rennes 1', 'Écologie'
23, 'Leclerc', 'Yanis', 'yanis.leclerc@univ-amu.fr', 'Aix-Marseille Université', 'Biologie Moléculaire'
24, 'Lefevre', 'Lucie', 'lucie.lefevre@ut3.fr', 'Université Toulouse III - Paul Sabatier', 'Physiologie'
25, 'Gauthier', 'Alex', 'alex.gauthier@u-psud.fr', 'Université Paris-Sud', 'Biologie Moléculaire'
26, 'Roy', 'Eva', 'eva.roy@univ-lyon.fr', 'Université de Lyon', 'Biologie Cellulaire'
27, 'Martinez', 'Hugo', 'hugo.martinez@unistra.fr', 'Université de Strasbourg', 'Génétique'
28, 'Dubois', 'Léa', 'lea.dubois@univ-lille.fr', 'Université de Lille', 'Biochimie'
29, 'Mohammed', 'Ahmed', 'ahmed.mohammed@u-psud.fr', 'Université Paris-Sud', 'Biologie Moléculaire'
30, 'Abdullah', 'Fatima', 'fatima.abdullah@univ-lyon.fr', 'Université de Lyon', 'Biologie Cellulaire'
31, 'Ali', 'Aisha', 'aisha.ali@unistra.fr', 'Université de Strasbourg', 'Génétique'
32, 'Omar', 'Lina', 'lina.omar@univ-lille.fr', 'Université de Lille', 'Biologie Marine'
33, 'Youssef', 'Sarah', 'sarah.youssef@sorbonne-universite.fr', 'Sorbonne Université', 'Physiologie'


/*Projet*/
LOAD DATA
INFILE *
APPEND
INTO TABLE projet
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(projetID, nom_projet, description, date_debut, date_fin)
BEGINDATA
1, 'Exploration of RNA Editing Mechanisms', 'Biologie Moléculaire', '15-feb-2019', '20-may-2020'
2, 'Viral Diseases and Immune Responses', 'Immunologie', '01-may-2019', '10-jun-2021'
3, 'Single-Cell Omics in Disease Research', 'Génétique', '25-aug-2019', '30-mar-2022'
4, 'Memory and Learning Mechanisms in Neurobiology', 'Neurobiologie', '10-nov-2019', '15-aug-2021'
5, 'Genetic Engineering for Sustainable Agriculture', 'Génétique', '28-feb-2020', '15-dec-2021'
6, 'Immunotherapy Development for Autoimmune Diseases', 'Immunologie', '15-may-2020', '22-jul-2022'
7, 'Quantum Biology Applications in Medicine', 'Biologie Moléculaire', '28-aug-2020', '18-jan-2023'
8, 'Functional Genomics for Cancer Therapeutics', 'Génétique', '12-nov-2020', '30-sep-2022'
9, 'Ecological Impact of Coral Reef Conservation', 'Écologie', '20-apr-2021', '28-jun-2023'
10, 'Neurodegeneration Studies for Disease Prevention', 'Neurobiologie', '05-jul-2021', '02-dec-2022'
11, 'Plant Metabolic Engineering for Crop Improvement', 'Biologie Végétale', '18-oct-2021', '20-feb-2023'
12, 'Microbial Symbiosis in Human Health', 'Microbiologie', '30-jan-2022', '15-apr-2023'
13, 'Structural Biology of Membrane Proteins', 'Biologie Moléculaire', '15-apr-2022', '10-jan-2024'
14, 'Microbiome Influence on Human Health', 'Microbiologie', '28-jul-2022', '28-nov-2023'
15, 'Gene Therapy for Genetic Disorders', 'Génétique', '10-oct-2022', '18-mar-2024'
16, 'Stem Cell Therapy for Regenerative Medicine', 'Biologie Moléculaire', '25-jan-2023', '28-jan-2025'
17, 'Ecological Impact of Invasive Species', 'Écologie', '12-jun-2013', '15-mar-2015'
18, 'Neuroimmunology and Nervous System Disorders', 'Neurobiologie', '28-sep-2013', '22-feb-2016'
19, 'Genomic Instability and Cancer Progression', 'Génétique', '15-dec-2013', '10-jun-2016'
20, 'CRISPR Applications in Genome Editing', 'Génétique', '02-may-2014', '28-aug-2016'
21, 'NanoBioTech', 'Nanotechnologie', '01-feb-2019', '01-aug-2022'
22, 'ImmunoTherapy', 'Immunologie', '18-mar-2020', '18-sep-2023'
23, 'EpiGeneticsLab', 'Épigénétique', '23-apr-2021', '23-oct-2024'
24, 'BioEnergySolutions', 'Biologie Moléculaire', '28-may-2018', '28-nov-2021'
25, 'NeuroCognition', 'Neurosciences', '12-jun-2020', '12-dec-2023'
26, 'EcoImpact', 'Écologie', '27-jul-2017', '27-jan-2020'
27, 'SyntheticBio', 'Biotechnologie', '11-aug-2019', '11-feb-2022'
28, 'PlantGenomeProject', 'Biologie Végétale', '26-sep-2020', '26-mar-2023'
29, 'MicrobeResearch', 'Microbiologie', '31-oct-2021', '30-apr-2024'
30, 'CellTherapyAdvancements', 'Biologie Cellulaire', '15-dec-2018', '15-jun-2022'
31, 'EcoResilience', 'Écologie', '30-jan-2019', '30-jul-2022'
32, 'HumanGenomeMapping', 'Génétique', '15-mar-2021', '15-sep-2023'
33, 'NeuroInnovations', 'Neurosciences', '20-apr-2018', '20-oct-2021'
34, 'BioNanoMaterials', 'Nanotechnologie', '05-may-2020', '05-nov-2023'
35, 'ImmunoDiagnostics', 'Immunologie', '20-jun-2017', '20-dec-2020'
36, 'EcoConservation', 'Écologie', '05-jul-2019', '05-jan-2022'
37, 'SyntheticBiologyApplications', 'Biotechnologie', '20-aug-2021', '20-feb-2024'
38, 'PlantEcophysiology', 'Biologie Végétale', '04-sep-2018', '04-mar-2021'
39, 'MicrobeEcologyStudy', 'Microbiologie', '19-oct-2020', '19-apr-2024'
40, 'CellRegenerationResearch', 'Biologie Cellulaire', '03-nov-2017', '03-may-2021'
41, 'Marine Ecosystem Conservation', 'Biologie Marine', '15-may-2023', '15-oct-2024'
42, 'Deep-Sea Biodiversity Exploration', 'Biologie Marine', '01-aug-2023', '01-feb-2025'

/*Encadre*/
LOAD DATA
INFILE *
APPEND
INTO TABLE Encadre
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(stagiaireID, chercheurID, projetID, date_debut, date_fin)
BEGINDATA
1, 1, 7, '15-dec-2020', '18-jan-2021'
11, 13, 24, '20-jun-2019', '01-sep-2019'
13, 21, 7, '28-jan-2021', '28-jun-2021'
23, 28, 16, '25-jan-2023', '28-may-2023'
25, 38, 24, '25-apr-2020', '28-jul-2020'
29, 1, 1, '15-dec-2019', '20-may-2020'
1, 13, 16, '15-dec-2023', '30-mar-2024'
23, 21, 24, '28-jul-2018', '28-sep-2018'
21, 9, 13, '15-jul-2022', '10-oct-2022'
28, 21, 13, '15-apr-2023', '10-jul-2023'
9, 36, 1, '15-jan-2020', '10-apr-2020'
15, 3, 3, '25-dec-2019', '30-apr-2020'
3, 6, 5, '28-feb-2021', '15-nov-2021'
27, 3, 8, '12-nov-2021', '30-sep-2022'
31, 3, 15, '30-may-2023', '30-aug-2023'
18, 6, 11, '18-jan-2022', '20-jan-2023'
6, 31, 11, '18-oct-2021', '20-feb-2022'
16, 31, 28, '26-sep-2021', '26-mar-2022'
16, 4, 41, '15-jun-2023', '25-aug-2023'
4, 15, 41, '15-oct-2023', '31-dec-2023'
16, 4, 42, '01-aug-2024', '01-feb-2025'
32, 15, 42, '01-aug-2024', '01-feb-2025'
2, 22, 30, '15-dec-2020', '15-jun-2021'
27, 19, 30, '15-dec-2019', '15-aug-2020'
14, 22, 40, '03-dec-2017', '03-may-2018'
30, 1, 40, '03-jun-2020', '03-may-2021'
33, 2, 30, '15-nov-2020', '20-jun-2021'
10, 8, 9, '20-apr-2022', '28-aug-2022'
22, 8, 26, '27-sep-2017', '27-dec-2017'
8, 10, 4, '10-nov-2020', '15-aug-2021'
20, 33, 10, '05-jul-2022', '02-dec-2022'
26, 34, 18, '28-sep-2014', '22-feb-2015'
5, 11, 2, '01-jul-2020', '10-aug-2020'
12, 11, 6, '15-may-2021', '22-oct-2021'
17, 34, 22, '18-jun-2020', '18-sep-2020'
24, 24, 22, '18-mar-2022', '30-aug-2022'
30, 34, 35, '20-oct-2017', '20-jan-2018'
19, 7, 12, '30-mar-2022', '15-aug-2022'
7, 17, 12, '26-nov-2022', '15-apr-2023'
19, 42, 12, '30-jan-2023', '01-apr-2023'

/*Article*/
LOAD DATA
INFILE *
APPEND
INTO TABLE Article
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(publicationID, titre,  revue,  date_publi, pays,)
BEGINDATA
1, 'RNA Editing: Mechanisms and Implications', 'Nature Reviews Genetics', '10-sep-2019', 'États-Unis', 1
2, 'Biological Insights into RNA Editing', 'Science', '25-apr-2020', 'Canada', 1
3, 'Emerging Viral Diseases: Mechanisms and Therapies', 'Nature Reviews Microbiology', '15-dec-2019', 'États-Unis', 2
4, 'Host Immune Responses to Viral Infections', 'Trends in Immunology', '25-jun-2020', 'Canada', 2
5, 'Viral Diseases: Challenges in Immune Modulation', 'Science', '15-may-2021', 'France', 2
6, 'Advancements in Single-Cell Sequencing Technologies', 'Nature Methods', '25-apr-2021', 'États-Unis', Null
7, 'Single-Cell Omics: Applications in Disease Diagnosis', 'Annual Review of Genomics and Human Genetics', '29-mar-2022', 'Canada', Null
8, 'Neurobiological Mechanisms of Memory Formation', 'Nature Neuroscience', '10-may-2020', 'États-Unis', 4
9, 'Learning and Plasticity in the Brain', 'Science', '28-dec-2020', 'Canada', 4
10, 'Neurobiology of Cognitive Function', 'Annual Review of Psychology', '15-aug-2021', 'France', 4
11, 'Advances in Crop Engineering for Sustainability', 'Nature Biotechnology', '01-mar-2021', 'États-Unis', 5
12, 'Environmental Impact of Genetically Modified Crops', 'Environmental Science & Technology', '20-jun-2021', 'Canada', 5
13, 'Breakthroughs in Autoimmune Disease Immunotherapy', 'Nature Reviews Immunology', '15-sep-2021', 'France', 6
14, 'Clinical Trials in Immunotherapy for Autoimmune Disorders', 'The Lancet Rheumatology', '10-jan-2022', 'Espagne', 6
15, 'Applications of Quantum Biology in Medical Imaging', 'Science Advances', '01-apr-2022', 'Allemagne', 7
16, 'Quantum Computing for Drug Discovery', 'Nature Reviews Drug Discovery', '20-jul-2022', 'États-Unis', 7
17, 'Genomic Approaches to Cancer Therapy', 'Nature Reviews Cancer', '15-oct-2022', 'Canada', 8
18, 'Functional Genomics in Precision Oncology', 'Trends in Cancer', '28-jan-2023', 'France', 8
19, 'Biodiversity Conservation in Coral Reefs', 'Ecology Letters', '10-apr-2023', 'Australie', 9
20, 'Preventive Approaches in Neurodegeneration', 'Nature Reviews Neuroscience', '05-jul-2023', 'Canada', 10
21, 'Metabolic Pathways in Engineered Crops', 'Trends in Plant Science', '18-oct-2023', 'France', 11
22, 'Human Health Impacts of Microbial Symbiosis', 'Nature Reviews Microbiology', '30-jan-2024', 'Allemagne', 12
24, 'Invasive Species and Ecosystem Dynamics', 'Annual Review of Ecology, Evolution, and Systematics', '01-sep-2015', 'France', 17
25, 'Neuroimmunological Insights', 'Nature Reviews Neuroscience', '01-feb-2016', 'Allemagne', 18
26, 'Genomic Instability in Cancer', 'Nature Reviews Genetics', '01-may-2016', 'Espagne', 19
27, 'Genome Editing with CRISPR', 'Trends in Biotechnology', '15-aug-2016', 'Canada', 20
28, 'CRISPR-Cas9: Unleashing Genome Editing Potential', 'Nature Reviews Genetics', '01-nov-2016', 'Allemagne', 20
29, 'Nanotechnology in Biomedical Applications', 'Science', '01-sep-2022', 'États-Unis', 21
30, 'Immunotherapy Breakthroughs', 'Nature Reviews Immunology', '15-nov-2022', 'France', 22
31, 'Bioenergy Solutions for a Sustainable Future', 'Biotechnology for Biofuels', '15-aug-2019', 'Canada', 24
32, 'Neurocognitive Processes in Learning', 'Trends in Cognitive Sciences', '01-jan-2020', 'France', 25
33, 'EcoImpact: Assessing Environmental Consequences', 'Ecology', '01-feb-2018', 'Australie', 26
34, 'Advancements in Synthetic Biology', 'Trends in Biotechnology', '15-feb-2021', 'Japon', 27
35, 'Plant Genome Project: Decoding Plant DNA', 'Nature Plants', '10-may-2022', 'France', 28
36, 'Microbe Research: Unraveling Microbial Mysteries', 'Nature Reviews Microbiology', '01-mar-2023', 'Allemagne', 29
37, 'EcoResilience: Adapting to Environmental Changes', 'Ecology Letters', '10-jun-2020', 'États-Unis', 31
38, 'Advancements in Human Genome Mapping', 'Nature Reviews Genetics', '28-sep-2020', 'France', 32
39, 'NeuroInnovations: Novel Approaches in Neuroscience', 'Trends in Neurosciences', '15-jan-2021', 'Allemagne', 33
40, 'BioNanoMaterials: Advances in Nanotechnology', 'Nature Nanotechnology', '02-apr-2021', 'Espagne', 34
41, 'ImmunoDiagnostics: Innovations in Immunology', 'Annual Review of Immunology', '20-jul-2021', 'Canada', 35
42, 'Biodiversity Preservation in Ecological Reserves', 'Annual Review of Ecology, Evolution, and Systematics', '18-mar-2022', 'France', 36
43, 'Impact of Climate Change on Ecosystems', 'Ecology Letters', '28-jun-2022', 'États-Unis', 36
44, 'Sustainable Practices for Ecological Balance', 'Trends in Ecology & Evolution', '15-sep-2022', 'Canada', 36
45, 'Innovations in Synthetic Biology', 'Trends in Biotechnology', '02-dec-2022', 'Allemagne', 37
46, 'Plant Ecophysiology: Insights and Applications', 'Annual Review of Plant Biology', '18-mar-2023', 'Japon', 38
47, 'Microbial Interactions in Plant Ecophysiology', 'Frontiers in Microbiology', '28-jun-2023', 'Australie', 38
48, 'Climate Change and Plant Ecophysiology', 'Trends in Plant Science', '15-sep-2023', 'France', 38
49, 'Microbial Ecology: Understanding Biodiversity', 'Nature Reviews Microbiology', '15-jan-2023', 'France', 39
50, 'Regeneration Mechanisms in Human Cells', 'Cell Stem Cell', '02-apr-2023', 'Allemagne', 40
51, 'Biological Insights into Cell Regeneration', 'Nature Reviews Genetics', '15-jun-2023', 'France', 40


/*organisme_financement*/
LOAD DATA
INFILE *
APPEND
INTO TABLE organisme_financement
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(orga_financeID, nom , type_orga, pays)
BEGINDATA
1, 'Agence Nationale de la Recherche', 'Gouvernemental', 'France'
2, 'Institut Pasteur', 'Organisation privée', 'France'
3, 'Fondation pour la Recherche Médicale', 'Organisation privée', 'France'
4, 'Centre National de la Recherche Scientifique', 'Gouvernemental', 'France'
5, 'Bpifrance', 'Gouvernemental', 'France'
6, 'Inserm Transfert', 'Organisation privée', 'France'
7, 'Caisse Nationale de l''Assurance Maladie', 'Gouvernemental', 'France'
8, 'Ligue Nationale contre le Cancer', 'Organisation privée', 'France'
9, 'Fondation Bettencourt Schueller', 'Organisation privée', 'France'
10, 'Conseil Régional de la Recherche en Île-de-France', 'Gouvernemental', 'France'
11, 'European Research Council', 'Organisation internationale', 'Europe'
12, 'Wellcome Trust', 'Organisation privée', 'Royaume-Uni'
13, 'Deutsche Forschungsgemeinschaft DFG', 'Gouvernemental', 'Allemagne'
14, 'Swiss National Science Foundation', 'Gouvernemental', 'Suisse'
15, 'Instituto de Salud Carlos III', 'Gouvernemental', 'Espagne'
16, 'Fondazione Telethon', 'Organisation privée', 'Italie'
17, 'National Science Centre NCN', 'Gouvernemental', 'Pologne'
18, 'Research Council of Norway', 'Gouvernemental', 'Norvège'
19, 'Netherlands Organization for Scientific Research NWO', 'Gouvernemental', 'Pays-Bas'
20, 'Austrian Science Fund FWF', 'Gouvernemental', 'Autriche'
21, 'Sorbonne Université', 'Université', 'France'
22, 'CNRS - Centre National de la Recherche Scientifique', 'Institut académique', 'France'
23, 'Université Paris-Saclay', 'Université', 'France'
24, 'INSERM - Institut National de la Santé et de la Recherche Médicale', 'Institut académique', 'France'
25, 'Université de Strasbourg', 'Université', 'France'
26, 'National Institutes of Health NIH', 'Gouvernemental', 'États-Unis'
27, 'National Science Foundation NSF', 'Gouvernemental', 'États-Unis'
28, 'Canadian Institutes of Health Research CIHR', 'Gouvernemental', 'Canada'
29, 'National Research Council of Canada NRC', 'Gouvernemental', 'Canada'
30, 'Fonds de recherche du Québec FRQ', 'Gouvernemental', 'Canada'
31, 'National Institutes of Health NIH', 'Gouvernemental', 'États-Unis'
32, 'Howard Hughes Medical Institute HHMI', 'Privé', 'États-Unis'
33, 'Canadian Institutes of Health Research CIHR', 'Gouvernemental', 'Canada'
34, 'Bill & Melinda Gates Foundation', 'Privé', 'États-Unis'
35, 'Fonds de recherche du Québec FRQ', 'Gouvernemental', 'Canada'
36, 'World Health Organization WHO', 'International', NULL
37, 'European Research Council ERC', 'International', NULL
38, 'GAVI, the Vaccine Alliance', 'International', NULL
39, 'International Monetary Fund IMF', 'International', NULL
40, 'Wellcome Trust', 'International', NULL

/*Evenement*/
LOAD DATA
INFILE *
APPEND
INTO TABLE evenement
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(evenementID, type_event, nom, date_debut, date_fin, lieu)
BEGINDATA
1, 'Conférence', 'Conférence Internationale sur la Biologie Moléculaire', '10-jan-2017', '12-jan-2017', 'Paris, France'
2, 'Séminaire', 'Séminaire Européen sur la Génétique', '20-feb-2017', '22-feb-2017', 'Berlin, Allemagne'
3, 'Colloque', 'Colloque International sur la Physiologie', '15-mar-2017', '17-mar-2017', 'Lyon, France'
4, 'Réunion', 'Réunion Annuelle des Chercheurs en Biologie', '25-apr-2017', '27-apr-2017', 'New York, États-Unis'
5, 'Formation', 'Formation Avancée en Biologie Cellulaire', '30-may-2017', '01-jun-2017', 'Paris, France'
6, 'Conférence', 'Conférence Asiatique sur la Neurobiologie', '10-jul-2017', '12-jul-2017', 'Tokyo, Japon'
7, 'Séminaire', 'Séminaire National sur la Biochimie', '20-aug-2017', '22-aug-2017', 'Bordeaux, France'
8, 'Colloque', 'Colloque Européen sur la Génétique Moléculaire', '15-sep-2017', '17-sep-2017', 'Barcelone, Espagne'
9, 'Réunion', 'Réunion des Experts en Microbiologie', '25-oct-2017', '27-oct-2017', 'Paris, France'
10, 'Formation', 'Formation Avancée en Biologie Marine', '30-nov-2017', '02-dec-2017', 'Sydney, Australie'
21, 'Conférence', 'Conférence Européenne sur la Biologie Moléculaire Avancée', '10-jan-2019', '12-jan-2019', 'Paris, France'
22, 'Séminaire', 'Séminaire International sur la Génétique Avancée', '20-feb-2019', '22-feb-2019', 'Berlin, Allemagne'
23, 'Colloque', 'Colloque National sur la Physiologie Avancée', '15-mar-2019', '17-mar-2019', 'Lyon, France'
24, 'Réunion', 'Réunion des Experts en Biologie Moléculaire', '25-apr-2019', '27-apr-2019', 'New York, États-Unis'
25, 'Formation', 'Formation Avancée en Génétique Moléculaire', '30-may-2019', '01-jun-2019', 'Paris, France'
26, 'Conférence', 'Conférence Asiatique sur la Neurobiologie Moléculaire', '10-jul-2019', '12-jul-2019', 'Tokyo, Japon'
27, 'Séminaire', 'Séminaire Européen sur la Biochimie Avancée', '20-aug-2019', '22-aug-2019', 'Bordeaux, France'
28, 'Colloque', 'Colloque International sur la Génétique Cellulaire', '15-sep-2019', '17-sep-2019', 'Barcelone, Espagne'
29, 'Réunion', 'Réunion Annuelle des Experts en Microbiologie', '25-oct-2019', '27-oct-2019', 'Paris, France'
30, 'Formation', 'Formation Avancée en Biologie Marine Moléculaire', '30-nov-2019', '02-dec-2019', 'Sydney, Australie'
31, 'Conférence', 'Conférence Internationale sur la Génétique Cellulaire', '15-jan-2020', '17-jan-2020', 'Paris, France'
32, 'Séminaire', 'Séminaire Européen sur la Neurobiologie', '25-feb-2020', '27-feb-2020', 'Berlin, Allemagne'
33, 'Colloque', 'Colloque International sur la Physiologie Cellulaire Avancée', '20-mar-2020', '22-mar-2020', 'Lyon, France'
34, 'Réunion', 'Réunion Annuelle des Chercheurs en Neurobiologie Moléculaire', '30-apr-2020', '02-may-2020', 'New York, États-Unis'
35, 'Formation', 'Formation Avancée en Génétique Animale', '05-jun-2020', '07-jun-2020', 'Paris, France'
36, 'Conférence', 'Conférence Asiatique sur la Biochimie Cellulaire', '15-jul-2020', '17-jul-2020', 'Tokyo, Japon'
37, 'Séminaire', 'Séminaire National sur la Physiologie Avancée', '25-aug-2020', '27-aug-2020', 'Bordeaux, France'
38, 'Colloque', 'Colloque Européen sur la Génétique Animale Moléculaire', '20-sep-2020', '22-sep-2020', 'Barcelone, Espagne'
39, 'Réunion', 'Réunion des Experts en Génétique Moléculaire', '30-oct-2020', '01-nov-2020', 'Paris, France'
40, 'Formation', 'Formation Avancée en Biologie Végétale Cellulaire', '05-dec-2020', '07-dec-2020', 'Sydney, Australie'
41, 'Conférence', 'Conférence Européenne sur la Biologie Moléculaire Avancée', '10-jan-2021', '12-jan-2021', 'Paris, France'
42, 'Séminaire', 'Séminaire International sur la Génétique Avancée', '20-feb-2021', '22-feb-2021', 'Berlin, Allemagne'
43, 'Colloque', 'Colloque National sur la Neurobiologie Avancée', '15-mar-2021', '17-mar-2021', 'Lyon, France'
44, 'Réunion', 'Réunion des Experts en Biologie Moléculaire', '25-apr-2021', '27-apr-2021', 'New York, États-Unis'
45, 'Formation', 'Formation Avancée en Génétique Moléculaire', '30-may-2021', '01-jun-2021', 'Paris, France'
46, 'Conférence', 'Conférence Asiatique sur la Neurobiologie Moléculaire', '10-jul-2021', '12-jul-2021', 'Tokyo, Japon'
47, 'Séminaire', 'Séminaire Européen sur la Biochimie Avancée', '20-aug-2021', '22-aug-2021', 'Bordeaux, France'
48, 'Colloque', 'Colloque International sur la Génétique Cellulaire', '15-sep-2021', '17-sep-2021', 'Barcelone, Espagne'
49, 'Réunion', 'Réunion Annuelle des Experts en Microbiologie', '25-oct-2021', '27-oct-2021', 'Paris, France'
50, 'Formation', 'Formation Avancée en Biologie Marine Moléculaire', '30-nov-2021', '02-dec-2021', 'Sydney, Australie'
51, 'Conférence', 'Conférence Internationale sur la Génétique Cellulaire', '15-jan-2022', '17-jan-2022', 'Paris, France'
52, 'Séminaire', 'Séminaire Européen sur la Neurobiologie', '25-feb-2022', '27-feb-2022', 'Berlin, Allemagne'
53, 'Colloque', 'Colloque International sur la Physiologie Cellulaire Avancée', '20-mar-2022', '22-mar-2022', 'Lyon, France'
54, 'Réunion', 'Réunion Annuelle des Chercheurs en Neurobiologie Moléculaire', '30-apr-2022', '02-may-2022', 'New York, États-Unis'
55, 'Formation', 'Formation Avancée en Génétique Animale', '05-jun-2022', '07-jun-2022', 'Paris, France'
56, 'Conférence', 'Conférence Asiatique sur la Biochimie Cellulaire', '15-jul-2022', '17-jul-2022', 'Tokyo, Japon'
57, 'Séminaire', 'Séminaire National sur la Physiologie Avancée', '25-aug-2022', '27-aug-2022', 'Bordeaux, France'
58, 'Colloque', 'Colloque Européen sur la Génétique Animale Moléculaire', '20-sep-2022', '22-sep-2022', 'Barcelone, Espagne'
59, 'Réunion', 'Réunion des Experts en Génétique Moléculaire', '30-oct-2022', '01-nov-2022', 'Paris, France'
61, 'Séminaire', 'Séminaire de Génétique Moléculaire', '15-jan-2023', '17-jan-2023', 'Lille, France'
62, 'Formations', 'Formations en Biologie Cellulaire', '20-feb-2023', '22-feb-2023', 'Rennes, France'
63, 'Colloque', 'Colloque sur la Biochimie', '10-mar-2023', '12-mar-2023', 'Strasbourg, France'
64, 'Réunion', 'Réunion Internationale de Neurobiologie', '18-apr-2023', '20-apr-2023', 'Toulouse, France'
65, 'Conférence', 'Conférence sur la Physiologie Moléculaire', '22-may-2023', '24-may-2023', 'Montpellier, France'
66, 'Séminaire', 'Séminaire de Biologie Marine', '30-jun-2023', '02-jul-2023', 'Nantes, France'
67, 'Formations', 'Formations Avancées en Génétique', '05-aug-2023', '07-aug-2023', 'Bordeaux, France'
68, 'Colloque', 'Colloque sur la Biologie Végétale', '12-sep-2023', '14-sep-2023', 'Marseille, France'
69, 'Réunion', 'Réunion Internationale de Microbiologie', '18-oct-2023', '20-oct-2023', 'Nice, France'
70, 'Conférence', 'Conférence sur la Biologie Animale', '25-nov-2023', '27-nov-2023', 'Lyon, France'
71, 'Séminaire', 'Séminaire de Génétique Humaine', '05-jan-2024', '07-jan-2024', 'Toulouse, France'
72, 'Formations', 'Formations Avancées en Bioinformatique', '18-feb-2024', '20-feb-2024', 'Strasbourg, France'
73, 'Colloque', 'Colloque sur la Biologie Moléculaire', '25-mar-2024', '27-mar-2024', 'Rennes, France'
74, 'Réunion', 'Réunion Internationale de Physiologie', '30-apr-2024', '02-may-2024', 'Avignon, France'
75, 'Conférence', 'Conférence sur la Génétique Avancée', '05-jun-2024', '07-jun-2024', 'Dijon, France'
76, 'Séminaire', 'Séminaire de Biologie Cellulaire', '12-jul-2024', '14-jul-2024', 'Grenoble, France'
77, 'Formations', 'Formations Avancées en Biochimie', '18-aug-2024', '20-aug-2024', 'Lille, France'
78, 'Colloque', 'Colloque sur la Génétique Moléculaire', '25-sep-2024', '27-sep-2024', 'Rennes, France'
79, 'Réunion', 'Réunion Internationale de Biochimie', '30-oct-2024', '01-nov-2024', 'Strasbourg, France'
80, 'Conférence', 'Conférence sur la Biologie Végétale', '05-dec-2024', '07-dec-2024', 'Toulouse, France'
81, 'Séminaire', 'Séminaire de Génétique Animale', '10-jan-2025', '12-jan-2025', 'Montpellier, France'
82, 'Formations', 'Formations Avancées en Neurobiologie', '15-feb-2025', '17-feb-2025', 'Nantes, France'
83, 'Colloque', 'Colloque sur la Bioinformatique', '22-mar-2025', '24-mar-2025', 'Nice, France'
84, 'Réunion', 'Réunion Internationale de Biologie Cellulaire', '28-apr-2025', '30-apr-2025', 'Bordeaux, France'
85, 'Conférence', 'Conférence sur la Physiologie Animale', '03-jun-2025', '05-jun-2025', 'Marseille, France'
86, 'Séminaire', 'Séminaire de Biologie Marine', '10-jul-2025', '13-jul-2025', 'Rennes, France'

/*Participe*/
LOAD DATA
INFILE *
APPEND
INTO TABLE Participe
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(chercheurID, projetID)
BEGINDATA
 1, 7
 13, 24
 21, 7
 28, 16
 38, 24
 1, 1
 13, 16
 21, 24
 28, 1
 38, 7
 13, 13
 21, 1
 28, 13
 38, 16
 13, 7
 21, 13
 28, 24
 38, 13
 9, 24
 9, 13
 36, 1
 3, 3
 13, 3
 3, 5
 6, 5
 16, 5
 31, 5
 3, 8
 22, 8
 39, 8
 38, 8
 3, 15
 23, 15
 34, 15
 3, 19
 23, 19
 11, 19
 19, 19
 3, 20
 23, 20
 1, 20
 3, 23
 13, 23
 26, 23
 3, 32
 12, 32
 19, 32
 21, 32
 10, 4
 10, 10
 10, 18
 33, 4
 33, 10
 33, 18
 22, 4
 2, 10
 34, 18
 24, 18
 25, 18
 25, 4
 35, 10
 43, 4
 6, 11
 6, 28
 6, 38
 16, 11
 16, 28
 16, 38
 31, 11
 31, 28
 31, 38
 41, 11
 4, 41
 15, 41
 30, 41
 40, 41
 4, 42
 15, 42
 30, 42
 40, 42
 2, 30
 22, 30
 19, 30
 22, 40
 2, 40
 1, 40
 11, 2
 24, 2
 11, 6
 24, 6
 34, 6
 18, 6
 34, 22
 24, 22
 11, 22
 24, 35
 34, 35
 11, 35
 29, 35
 29, 6
 8, 9
 8, 17
 8, 26
 8, 31
 8, 36
 20, 9
 20, 17
 20, 26
 20, 31
 20, 36
 27, 9
 27, 17
 27, 26
 27, 31
 27, 36
 37, 9
 37, 17
 37, 26
 37, 31
 37, 36
 7, 12
 7, 14
 7, 29
 7, 39
 17, 12
 17, 14
 17, 29
 17, 39
 32, 12
 32, 14
 32, 29
 32, 39
 42, 12
 42, 14
 5, 38
 5, 14
 14, 14
 14, 29
 1, 11
 1, 3
 1, 14
 1, 4
 1, 15
 1, 1
 1, 10
 1, 16
 1, 2
 1, 13
 1, 12
 1, 9
 1, 8
 2, 9
 2, 2
 2, 13
 2, 11
 2, 19
 2, 20
 2, 6
 2, 18
 2, 15
 2, 17
 2, 7
 2, 10
 2, 8
 2, 3
 2, 1
 3, 17
 3, 15
 4, 19
 4, 16
 4, 2
 4, 12
 4, 15
 4, 13
 4, 11
 5, 4
 5, 11
 6, 2
 6, 16
 6, 4
 6, 19
 6, 5
 6, 10
 6, 15
 6, 18
 6, 6
 6, 12
 6, 1
 7, 11
 7, 8
 7, 2
 7, 13
 7, 14
 7, 3
 7, 16
 7, 17
 7, 12
 7, 6
 7, 4
 7, 5
 7, 1
 7, 20
 7, 10
 7, 7
 7, 18
 7, 19
 8, 9
 8, 13
 8, 6
 8, 18
 8, 10
 8, 19
 8, 16
 8, 17
 8, 11
 8, 1
 8, 5
 8, 2
 8, 15
 8, 4
 8, 20
 8, 14
 8, 12
 8, 3
 8, 7
 9, 8
 9, 15
 9, 12
 9, 5
 9, 14
 9, 19
 9, 18
 9, 4
 10, 10
 10, 5
 10, 2
 10, 6
 10, 20
 10, 14
 10, 7
 10, 17
 10, 19
 10, 13
 10, 11
 10, 9
 11, 16
 11, 15
 11, 13
 11, 10
 11, 3
 11, 14
 11, 9
 11, 4
 11, 19
 11, 6
 11, 7
 11, 20
 11, 2
 11, 17
 11, 11
 11, 1
 11, 5
 12, 5
 12, 15
 12, 7
 12, 10
 12, 12
 13, 4
 13, 9
 13, 19
 13, 10
 13, 11
 13, 15
 13, 13
 13, 5
 13, 6
 13, 7
 13, 16
 14, 3
 14, 1
 14, 16
 14, 18
 14, 17
 14, 20
 14, 15
 14, 10
 14, 7
 14, 9
 14, 12
 14, 19
 14, 13
 14, 4
 14, 14
 14, 6
 14, 2
 14, 8
 14, 11
 15, 13
 15, 2
 15, 1
 15, 19
 15, 5
 15, 6
 15, 16
 15, 7
 16, 19
 16, 13
 16, 4
 16, 12
 16, 14
 16, 11
 16, 15
 16, 5
 16, 6
 16, 8
 16, 16
 17, 6
 17, 12
 17, 16
 17, 8
 17, 13
 17, 15
 17, 5
 17, 19
 17, 7
 17, 18
 17, 2
 17, 17
 17, 1
 17, 20
 17, 11
 17, 9
 17, 14
 17, 4
 17, 3
 17, 10
 18, 4
 18, 12
 18, 16
 18, 19
 18, 2
 18, 13
 18, 5
 18, 11
 18, 17
 18, 10
 18, 8
 18, 15
 18, 6
 19, 10
 19, 18
 19, 13
 19, 20
 19, 1
 19, 19
 19, 15
 19, 6
 19, 12
 19, 5
 20, 19
 20, 11
 21, 3
 21, 13
 21, 16
 21, 9
 21, 14
 21, 5
 21, 17
 21, 11
 21, 18
 21, 20
 21, 1
 21, 2
 21, 7
 21, 19
 21, 12
 21, 4
 21, 6
 21, 15
 22, 5
 22, 13
 22, 9
 22, 18
 22, 10
 22, 11
 22, 3
 23, 10
 23, 7
 23, 14
 23, 17
 23, 5
 23, 9
 23, 2
 23, 16
 24, 16
 24, 6
 24, 9
 24, 18
 24, 3
 24, 11
 24, 8
 24, 19
 24, 15
 24, 4
 24, 1
 24, 20
 24, 14
 24, 17
 24, 7
 25, 6
 25, 8
 26, 20
 26, 15
 26, 2
 26, 3
 26, 10
 26, 6
 26, 4
 26, 1
 26, 5
 26, 16
 26, 13
 26, 19
 26, 12
 26, 14
 26, 9
 26, 7
 26, 17
 26, 11
 26, 8
 26, 18
 27, 14
 27, 11
 27, 9
 27, 20
 27, 4
 27, 19
 27, 13
 27, 12
 27, 8
 27, 15
 27, 7
 27, 17
 27, 16
 27, 5
 27, 2
 27, 6
 27, 1
 27, 10
 27, 18
 28, 19
 28, 13
 28, 3
 28, 8
 28, 7
 28, 9
 28, 11
 28, 2
 28, 15
 28, 10
 28, 6
 28, 20
 28, 1
 29, 5
 29, 13
 29, 16
 29, 17
 29, 15
 29, 11
 29, 8
 29, 14
 29, 10
 29, 9
 29, 4
 29, 20
 29, 18
 29, 12
 29, 2
 29, 6
 29, 7
 30, 20
 30, 5
 31, 9
 31, 16
 32, 13
 32, 8
 32, 17
 32, 2
 32, 12
 32, 19
 32, 10
 32, 18
 32, 6
 32, 16
 32, 14
 32, 4
 32, 5
 32, 1
 32, 7
 33, 13
 33, 3
 33, 7
 33, 11
 33, 4
 33, 8
 33, 2
 34, 5
 34, 20
 34, 16
 35, 3
 35, 2
 35, 12
 35, 7
 35, 9
 35, 5
 35, 20
 35, 8
 35, 10
 35, 11
 35, 1
 35, 18
 35, 16
 35, 14
 35, 4
 35, 13
 35, 15
 35, 19
 35, 6
 35, 17
 36, 2
 36, 6
 36, 19
 36, 3
 36, 4
 36, 9
 37, 1
 37, 19
 37, 20
 37, 13
 37, 2
 37, 10
 37, 18
 37, 12
 37, 5
 37, 16
 37, 15
 37, 11
 37, 17
 37, 4
 37, 6
 38, 6
 38, 15
 38, 19
 38, 5
 38, 13
 38, 16
 38, 3
 38, 8
 38, 11
 38, 14
 38, 4
 38, 18
 38, 2
 38, 10
 38, 1
 38, 7
 38, 12
 39, 12
 39, 14
 39, 17
 39, 9
 39, 19
 39, 1
 39, 6
 39, 2
 39, 8
 39, 15
 39, 4
 40, 19
 40, 18
 40, 4
 40, 5
 40, 11
 40, 2
 40, 9
 40, 15
 40, 10
 40, 6
 40, 20
 40, 14
 40, 1
 40, 7
 40, 13
 40, 12

/*publie*/
 8, 19
 20, 42
 27, 49
 37, 19
 8, 43
 20, 49
 27, 44
 37, 49
 20, 11
 20, 12
 8, 24
 37, 31
 37, 33
 8, 34
 37, 37
 41, 45
 16, 46
 7, 47
 3, 3
 23, 7
 3, 26
 23, 28
 3, 38
 23, 51
 23, 1
 3, 17
 23, 18
 3, 16
 23, 23
 3, 27
 11, 4
 34, 5
 24, 13
 11, 14
 34, 4
 24, 5
 11, 5
 34, 4
 24, 41
 11, 30
 7, 22
 17, 36
 32, 47
 42, 49
 7, 36
 17, 22
 42, 36
 1, 1
 13, 2
 21, 35
 28, 1
 38, 2
 1, 15
 11, 8
 33, 10
 2, 20
 22, 25
 22, 32
 11, 39
 33, 9
 2, 5
 22, 7
 2, 50
 22, 51
 22, 6
 22, 29
 22, 50
 12, 8
 18, 10
 25, 51
 35, 10
 4, 19
 15, 43
 30, 44
 40, 47
 30, 44
 40, 19
 9, 2
 19, 26
 26, 27
 36, 28
 9, 39
 19, 40
 19, 41
 36, 45
 36, 51

/*Publie*/
LOAD DATA
INFILE *
APPEND
INTO TABLE NomTable
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(NomAtt1, NomAtt2, ..., NomAttn)
BEGINDATA
8, 19
20, 42
27, 49
37, 19
8, 43
20, 49
27, 44
37, 49
20, 11
20, 12
8, 24
37, 31
37, 33
8, 34
37, 37
41, 45
16, 46
7, 47
3, 3
23, 7
3, 26
23, 28
3, 38
23, 51
23, 1
3, 17
23, 18
3, 16
23, 22
3, 27
11, 4
34, 5
24, 13
11, 14
34, 4
24, 5
11, 5
34, 4
24, 41
11, 30
7, 22
17, 36
32, 47
42, 49
7, 36
17, 22
42, 36
1, 1
13, 2
21, 35
28, 1
38, 2
1, 15
11, 8
33, 10
2, 20
22, 25
22, 32
11, 39
33, 9
2, 5
22, 7
2, 50
22, 51
22, 6
22, 29
22, 50
12, 8
18, 10
25, 51
35, 10
4, 19
15, 43
30, 44
40, 47
30, 44
40, 19
9, 2
19, 26
26, 27
36, 28
9, 39
19, 40
19, 41
36, 45
36, 51

LOAD DATA
INFILE *
APPEND
INTO TABLE stagiaire_assiste
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(evenementID, stagiaireID)
BEGINDATA
22, 10
14, 11
30, 12
23, 18
11, 26
29, 26
11, 30
27, 36
17, 37
25, 38
33, 41
8, 46
12, 47
27, 55
24, 56
21, 58
19, 72
7, 72
23, 73
28, 77
16, 80
16, 86
32, 86


LOAD DATA
INFILE *
APPEND
INTO TABLE chercheur_assiste
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(evenementID, chercheurID)
BEGINDATA
1, 1
2, 5
3, 3
4, 4
5, 14
6, 20
7, 9
8, 37
9, 19
10, 6
11, 11
12, 35
13, 1
14, 40
15, 15
16, 41
17, 22
18, 43
19, 4
20, 50
21, 21
22, 8
23, 2
24, 54
25, 43
26, 36
27, 38
28, 59
29, 39
30, 70
31, 51
32, 52
33, 53
34, 54
35, 18
36, 37
37, 58
38, 59
39, 60
40, 41
41, 51
42, 52
43, 35

/*Finanacement*/
LOAD DATA
INFILE *
APPEND
INTO TABLE financement
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(orga_financementID, projetID, date_financement, montant)
BEGINDATA
1, 1,  '2019-02-15', 10000
12, 1,  '2019-02-15', 10000
16, 1,  '2019-02-15', 10000
2, 2,  '2019-05-01', 15000
12, 2,  '2019-05-01', 15000
22, 2,  '2019-05-01', 15000
40, 2,  '2019-05-01', 15000
3, 3,  '2019-08-25', 20000
18, 3,  '2019-08-25', 20000
17, 3,  '2019-08-25', 20000
4, 4,  '2019-11-10', 25000
7, 4,  '2019-11-10', 25000
5, 5,  '2020-02-28', 30000
6, 6,  '2020-05-15', 35000
7, 7,  '2020-08-28', 40000
13, 5,  '2020-02-28', 30000
14, 6,  '2020-05-15', 35000
15, 7,  '2020-08-28', 40000
16, 8,  '2020-11-12', 45000
17, 9,  '2021-04-20', 50000
18, 10,  '2021-07-05', 55000
19, 11,  '2021-10-18', 60000
20, 12,  '2022-01-30', 65000
8, 8,  '2020-11-12', 45000
9, 9,  '2021-04-20', 50000
10, 10,  '2021-07-05', 55000
11, 11,  '2021-10-18', 60000
12, 12,  '2022-01-30', 65000
13, 13,  '2022-04-15', 70000
14, 14,  '2022-07-28', 75000
15, 15,  '2022-10-10', 80000
16, 16,  '2023-01-25', 85000
17, 17,  '2013-06-12', 90000
18, 18,  '2013-09-28', 95000
19, 19,  '2013-12-15', 100000
20, 20,  '2014-05-02', 105000
21, 21,  '2019-02-01', 110000
22, 22,  '2020-03-18', 115000
23, 23,  '2021-04-23', 120000
24, 24,  '2018-05-28', 125000
25, 25,  '2020-06-12', 130000
26, 26,  '2017-07-27', 135000
27, 27,  '2019-08-11', 140000
28, 28,  '2020-09-26', 145000
29, 29,  '2021-10-31', 150000
 30, 8,  '2020-11-12', 45000
31, 9,  '2021-04-20', 50000
32, 10,  '2021-07-05', 55000
33, 11,  '2021-10-18', 60000
34, 12,  '2022-01-30', 65000
35, 13,  '2022-04-15', 70000
36, 14,  '2022-07-28', 75000
37, 15,  '2022-10-10', 80000
38, 16,  '2023-01-25', 85000
39, 17,  '2013-06-12', 90000
40, 18,  '2013-09-28', 95000
41, 19,  '2013-12-15', 100000
42, 20,  '2014-05-02', 105000
30, 30,  '2018-12-15', 155000
30, 12,  '2018-12-15', 155000
31, 31,  '2019-01-30', 160000
32, 32,  '2021-03-15', 165000
30, 27,  '2018-12-15', 155000
31, 14,  '2019-01-30', 160000
32, 39,  '2021-03-15', 165000
33, 9,  '2018-04-20', 170000
34, 33,  '2020-05-05', 175000
35, 1,  '2017-06-20', 180000
36, 25,  '2019-07-05', 185000
37, 36,  '2021-08-20', 190000
38, 20,  '2018-09-04', 195000
39, 13,  '2020-10-19', 200000
40, 8,  '2017-11-03', 205000
41, 40,  '2023-05-15', 210000
42, 4,  '2023-08-01', 215000
33, 33,  '2018-04-20', 170000
34, 34,  '2020-05-05', 175000
35, 35,  '2017-06-20', 180000
36, 36,  '2019-07-05', 185000
37, 37,  '2021-08-20', 190000
38, 38,  '2018-09-04', 195000
39, 39,  '2020-10-19', 200000
40, 40,  '2017-11-03', 205000
41, 1,  '2023-05-15', 210000
42, 2,  '2023-08-01', 215000
