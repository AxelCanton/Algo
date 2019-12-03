//
//  main.swift
//  
//
//
import Foundation
import typeAbstrait

//fonction qui gère l'affichage du jeu
//données : une partie
//résultat : print en ligne de commandes
func afficherJeu(partie:partieProtocol){
  for i in 0...3 {
    print("|---------|--------|--------|--------|\n")
	for j in 0...3{
        let valeur : Int = 4*i+j+1
        print("|  ",valeur," : ")
        if let p=(partie.plateau.plat[i][j]).joueur{
            if let m=(partie.plateau.plat[i][j]).piece{
                print(p.nomJoueur+", "+m.nomPiece.rawValue)
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


//fonction qui modifie le choix de la case (Int) en case (Case)
//données:
func FchoixCase(partie:partieProtocol,numCase:Int)->caseProtocol{
    if numCase==1{
        return partie.plateau.plat[0][0]
    }
    else if numCase==2{
        return partie.plateau.plat[0][1]
    }
    else if numCase==3{
        return partie.plateau.plat[0][2]
    }
    else if numCase==4{
        return partie.plateau.plat[0][3]
    }
    else if numCase==5{
        return partie.plateau.plat[1][0]
    }
    else if numCase==6{
        return partie.plateau.plat[1][1]
    }
    else if numCase==7{
        return partie.plateau.plat[1][2]
    }
    else if numCase==8{
        return partie.plateau.plat[1][3]
    }
    else if numCase==9{
        return partie.plateau.plat[2][0]
    }
    else if numCase==10{
        return partie.plateau.plat[2][1]
    }
    else if numCase==11{
        return partie.plateau.plat[2][2]
    }
    else if numCase==12{
        return partie.plateau.plat[2][3]
    }
    else if numCase==13{
        return partie.plateau.plat[3][0]
    }
    else if numCase==14{
        return partie.plateau.plat[3][1]
    }
    else if numCase==15{
        return partie.plateau.plat[3][2]
    }
    else if numCase==16{
        return partie.plateau.plat[3][3]
    }
    
}

func FchoixPiece(numPiece:Int)->pieceProtocol{
    var piece : pieceProtocol
    if numPiece==1{
        piece=pieceProtocol(nomPiece:NomPiece.Cylindre)
        
    }
    else if numPiece==2{
        piece=pieceProtocol(nomPiece:NomPiece.Sphere)
    }
    else if numPiece==3{
        piece=pieceProtocol(nomPiece:NomPiece.Cube)
    }
    else if numPiece==4{
        piece=pieceProtocol(nomPiece:NomPiece.Cone)
    }
    return piece
}

func main(){
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
    var j1 : joueurProtocol = joueurProtocol(nom:nomJ1)
    var j2 : joueurProtocol = joueurProtocol(nom:nomJ2)
    var partie : partieProtocol = partieProtocol(j1:j1,j2:j2)
    let numJoueur = Int.random(in:1...2)
    var joueurCourant : joueurProtocol
    if numJoueur==1{
        joueurCourant = j1
    }
    else {
        joueurCourant = j2
    }
    while !partie.partieFinie {
        print("\n\n\nC'est au tour du joueur %c de jouer",joueurCourant.nomJoueur)
        afficherJeu(partie:partie)
        
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
        var choixCase : caseProtocol = FchoixCase(partie:partie,numCase:numCase)
        print("Quelle pièce voulez-vous placer ? Entrez le numéro correspondant à la pièce :\n")
        print("1 : Cylindre\n")
        print("2 : Sphère\n")
        print("3 : Cube\n")
        print("4 : Cône\n")
        
        //Test de la demande du choix de la pièce
        var numPiece : Int = 0
        var testPiece : Bool=false
        print("Rentrer une valeur entre 1 et 4")
        while !testPiece {
            if let valRentree=readLine(){
                if let val=Int(valRentree){
                    if(val<1 || val>4){
                        print("Rentrer une valeur entre 1 et 4")
                    } else {
                        testPiece=true
                        numPiece=val
                    }
                } else {
                    print("Rentrer un nombre entre 1 et 4")
                }
            }
        }
        
        
        var choixPiece : pieceProtocol = FchoixPiece(numPiece:numPiece)
        var pieceAjoutee : Bool = false
        while !pieceAjoutee{
                do{
                    try choixCase.ajouterPiece(piece:choixPiece,joueur:joueurCourant)
                    pieceAjoutee = true
                    joueurCourant = j2
                }
                catch{
                    print("Votre pièce ne peut pas être ajoutée dans cette case")
                }
        }
	if(joueurCourant.nomJoueur==j1.nomJoueur){
		joueurCourant=j2
	}else{
		joueurCourant=j1

	}    
	}	
    
 	print("Partie finie")   
}
