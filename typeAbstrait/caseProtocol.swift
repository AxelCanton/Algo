//
//  caseProtocol.swift
//  
//
//

import Foundation


protocol caseProtocol{
    
    //init :  -> caseProtocol
    //fonction qui crée une case vide
    //données : rien
    //résultat : une case vide
    //post : estVide = true, piece=vide, joueur=vide
    init()
    
    var estVide : Bool {get} // une case est vide s'il n'ya pas de pièce posée par un joueur
    var piece : pieceProtocol? {get set}//s'il y a une pièce renvoie la pièce sinon renvoie vide
    var joueur : joueurProtocol? {get set} //s'il y a une pièce renvoie le joueur qui l'a posé sinon renvoie vide
    
    // ajouterPiece : caseProtocol x pieceProtocol x joueurProtocol -> caseProtocol
    //fonction qui ajoute la pièce d'un joueur sur une case
    //données : une case vide, une pièce et un joueur
    //résultat : renvoie la case avec la pièce du joueur ajoutée
    //post : si la case est déjà occupée renvoie une erreur, si le joueur a déjà utilisé ses 2 pièces renvoie une erreur et s'il existe une pièce de même forme de l'autre joueur dans la même colonne que la case ou la même ligne que la case ou la même région que la case renvoie une erreur
    //post: estvide(ajouterPiece(piece,case,joueur)=false, getPiece(ajouterPiece(piece,case,joueur)=piece, getJoueur(ajouterPiece(piece,case,joueur)=joueur
    func ajouterPiece(piece:pieceProtocol, joueur:joueurProtocol) throws ->caseProtocol

}
