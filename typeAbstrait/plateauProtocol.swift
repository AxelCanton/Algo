//
//  plateauProtocol.swift
//  
//
//

import Foundation

protocol plateauProtocol{
    //init : -> plateauProtocol
    //fonction qui créée un plateau vide
    //données : rien
    //résultat : un plateau vide contenant 4x4 cases vides
    init()
    
    // ajouterPiece : plateauProtocol x caseProtocol x pieceProtocol x joueurProtocol -> caseProtocol
    //fonction qui ajoute la pièce d'un joueur sur une case
    //données : une case, une pièce et un joueur
    //résultat : renvoie la case avec la pièce du joueur ajoutée
    //post : si la case est déjà occupée renvoie une erreur, si le joueur a déjà utilisé ses 2 pièces de la même forme renvoie une erreur et s'il existe une pièce de même forme de l'autre joueur dans la même colonne que la case ou la même ligne que la case ou la même région que la case renvoie une erreur
    //post: estvide(ajouterPiece(piece,case,joueur)=false
    func ajouterPiece(case : caseProtocol, piece:pieceProtocol, joueur:joueurProtocol) throws ->caseProtocol
}
