//
//  main.swift
//  
//
//

//fonction qui gère l'affichage du jeu
//données : une partie
//résultat : print en ligne de commandes
func afficherJeu(partie:partieProtocol){
  for i in 0...3 {
    print("|---------|--------|--------|--------|\n")
	for j in 0...3{
        let valeur : Int = 4 * i + j + 1
        print("|  ",valeur," : ")
        if let p = partie.plateau.getCase(x: i, y: j).joueur {
            if let m = partie.plateau.getCase(x: i, y: j).piece {
                print(p.nomJoueur + ", " + m.rawValue)
            }
        }
	else{
		print(" ...")		
		}
	}
	print("  |\n")
    }
    print("|---------|--------|--------|--------|\n")

    
}


//FchoixCase : partieProtocol x Int -> caseProtocol
//fonction qui modifie le choix de la case (Int) en case (Case)
//données: une partie en cours et un int représentant une case du plateau de jeu

func FchoixCase(partie:partieProtocol,numCase:Int)-> caseProtocol? {
    if numCase==1{
        return partie.plateau.getCase(x:0,y:0)
    }
    else if numCase==2{
        return partie.plateau.getCase(x:0,y:1)
    }
    else if numCase==3{
        return partie.plateau.getCase(x:0,y:2)
    }
    else if numCase==4{
        return partie.plateau.getCase(x:0,y:3)
    }
    else if numCase==5{
        return partie.plateau.getCase(x:1,y:0)
    }
    else if numCase==6{
        return partie.plateau.getCase(x:1,y:1)
    }
    else if numCase==7{
        return partie.plateau.getCase(x:1,y:2)
    }
    else if numCase==8{
        return partie.plateau.getCase(x:1,y:3)
    }
    else if numCase==9{
        return partie.plateau.getCase(x:2,y:0)
    }
    else if numCase==10{
        return partie.plateau.getCase(x:2,y:1)
    }
    else if numCase==11{
        return partie.plateau.getCase(x:2,y:2)
    }
    else if numCase==12{
        return partie.plateau.getCase(x:2,y:3)
    }
    else if numCase==13{
        return partie.plateau.getCase(x:3,y:0)
    }
    else if numCase==14{
        return partie.plateau.getCase(x:3,y:1)
    }
    else if numCase==15{
        return partie.plateau.getCase(x:3,y:2)
    }
    else if numCase==16{
        return partie.plateau.getCase(x:3,y:3)
    }
    return nil
}
	//FchoixPiece : Int -> NomPiece
	//fonction qui modifie le numéro de la pièce entrée en paramètres par le joueur en pièce
	 
func FchoixPiece(numPiece:Int) -> NomPiece? {
    var piece: NomPiece?
    if numPiece == 1{
        piece = NomPiece.Cylindre
        
    }
    else if numPiece == 2{
        piece = NomPiece.Sphere
    }
    else if numPiece == 3{
        piece = NomPiece.Cube
    }
    else if numPiece == 4{
        piece = NomPiece.Cone
    }
    return piece
}

func main(){
    print("-----------------------------------------\n")
    print("Début de la partie du jeu Quantik\n\n")
    print("Veuillez entrer le nom d'un joueur (celui qui aura les pièces blanches):\n")
    var nomJ1 : String = ""
    if let nomRentre=readLine(){
        nomJ1=nomRentre
    }
    print("Veuillez entrer le nom de l'autre joueur (celui qui aura les pièces noires):\n")
    var nomJ2 : String = ""
    if let nomRentre=readLine(){
        nomJ2=nomRentre
    }
    let j1 : joueurProtocol = Joueur(nom: nomJ1)
    let j2 : joueurProtocol = Joueur(nom: nomJ2)
    var plateau : plateauProtocol = Plateau()
    let partie : partieProtocol = Partie(j1:j1,j2:j2,plateau:plateau)
	
	//choix aléatoire du joueur qui va commencer la partie
    let numJoueur = Int.random(in:1...2)
    var joueurCourant : joueurProtocol
    if numJoueur == 1 {
        joueurCourant = j1
    }
    else {
        joueurCourant = j2
    }
	
	
    while !partie.partieFinie() {
        print("\n\n\nC'est au tour de %c de jouer",joueurCourant.nomJoueur)
        afficherJeu(partie:partie)
	    
        var pieceAjoutee = false
        while !pieceAjoutee {
        
        	//Demande de la case au Joueur
        	print("Où voulez-vous placer votre pièce ? Veuillez entrer le numéro de la case:\n")
	
            //Test de la demande du choix de la case
            var numCase : Int = 0
            var testCase : Bool=false
            while !testCase {
                if let valRentree=readLine(){
            		if let val=Int(valRentree){
            		    if(val<1 || val>16){
            			    print("Rentrer une valeur entre 1 et 16")
            		    } else {
            				testCase=true
            				numCase=val
            		    }
            		} else {
            		    print("Rentrer un nombre entre 1 et 16")
            		}
                }
            }

    		//Demande de la pièce au Joueur
    		guard let choixCase : caseProtocol = FchoixCase(partie:partie,numCase:numCase) else {
                continue
            }
    		print("Quelle pièce voulez-vous placer ? Entrez le numéro correspondant à la pièce :\n")
    		print("1 : Cylindre\n")
    		print("2 : Sphère\n")
    		print("3 : Cube\n")
    		print("4 : Cône\n")
            
    		//Test de la demande du choix de la pièce
    		var numPiece: Int = 0
    		var testPiece: Bool=false
    		print("Rentrer une valeur entre 1 et 4")
    		while !testPiece {
    		    if let valRentree = readLine() {
        			if let val = Int(valRentree) {
        			    if(val < 1 || val > 4) {
        				    print("Rentrer une valeur entre 1 et 4")
        			    } else {
            				testPiece = true
            				numPiece = val
                        }
        			} else {
        			    print("Rentrer un nombre entre 1 et 4")
        			}
    		    }
    		}
        
        
    		guard let choixPiece : NomPiece = FchoixPiece(numPiece:numPiece) else {
                continue
            }

            do {
                try plateau.ajouterPiece(laCase: choixCase, piece: choixPiece, joueur: &joueurCourant)
                pieceAjoutee = true
            } catch {
                print("Votre pièce ne peut pas être ajoutée dans cette case")
            }
        }

    	if joueurCourant.nomJoueur == j1.nomJoueur {
    		joueurCourant=j2
    	} else {
    		joueurCourant=j1
    	}

	}	
    
 	print("Partie finie !\n Le gagnant est :%c ",joueurCourant.nomJoueur)
}

main()
