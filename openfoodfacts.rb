#=begin
#*** Exercice Ruby - Open Food Facts ***
#
#Open Food Facts est une organisation qui recense de façon colaborative des informations 
#sur les produits alimentaires disponibles dans le commerce. 
#Identifiés par un code barre, ces produits sont alors listés avec toutes les informations disponibles: 
#nom, marque, composition, lieu et pays de vente, etc..
#
#Open Food Fact propose une API afin d'avoir accès à ces informations. 
#Nous allons utiliser cette API avec Ruby!
#=end
#
#
#
#### 1_indiquer au pgrm les outils à précharger
#
#require "open-uri" # précharger l'outil "open-uri" pour faire des requêts "GET"
#require "json" # précharger le module "json" pour interpréter du json dans ruby car l'API utilise json
#
#
#loop do # boucle pour que le pgrm redemande une saisie
#    
#    puts "Entrez un numéro de Code Barre"  # on demande à l'utilisateur d'entrer un code barre
#    bar_code = gets.chomp # on stocke la saisie dans une variable
#
#### 2_accéder aux bonnes informations depuis le site Open Food Facts 
#
#    url = "http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json" # on interroge l'API à partir du code barre
#
#
#### 3_convertir lesdonnées json au format ruby via le module préchargé
#
#    json = open(url).read # on demande au pgrm d'ouvrir le fichier et de le lire afin de le stocker en mémoire
#
#    data = JSON.parse(json) # on demande au pgrm de faire une conversion du fichiervers un format exploitable en ruby
#
#
#    ### 4_exploiter les données récupérées et contenues dans un objet (on y accède en connaissant le nom de chaque propriété)
#
#    puts "Nom du produit : " + data["product"]["product_name"]
#
#end # fin de la boucle