//
//  plateauProtocol.swift
//  
//
//

import Foundation

protocol plateauProtocol{
    //init : -> plateauProtocol
    //fonction qui créée un plateau vide
    //résultat : une grille contenant 16 cases vides ayant des coordonnées x,y comprises entre [0,4]
    init()
    
    // ajouterPiece : plateauProtocol x caseProtocol x NomPiece x joueurProtocol -> caseProtocol
    //fonction qui ajoute la pièce d'un joueur sur une case
    //données : une case, une pièce et un joueur
    //résultat : renvoie la case avec la pièce du joueur ajoutée
    //post : si la case est déjà occupée renvoie une erreur, si le joueur a déjà utilisé ses 2 pièces de la même forme renvoie une erreur et s'il existe une pièce de même forme de l'autre joueur dans la même colonne que la case ou la même ligne que la case ou la même région que la case renvoie une erreur
    //post: estvide(ajouterPiece(piece,case,joueur)=false, on décrémente de 1 le nbRestant(piece:piece)
    mutating func ajouterPiece(case : caseProtocol, piece:NomPiece, joueur:joueurProtocol) throws -> plateauProtocol
    
    //getCase : plateauProtocol x Int x Int -> caseProtocol
    //fonction qui renvoie la case correspondante à la position donnée
    //données : x et y, 2 entiers compris entre 0 et 3, correspondant à la position de la case
    //résultat : renvoie la case correspondante à la position
    //post : postion(getCase(x:Int,y:Int))=(x,y)
    func getCase(x:Int,y:Int)->caseProtocol
}
