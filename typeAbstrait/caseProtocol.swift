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
    
    var estVide : Bool {get set} // une case est vide s'il n'ya pas de pièce posée par un joueur
    var piece : pieceProtocol? {get set}//s'il y a une pièce renvoie la pièce sinon renvoie vide
    var joueur : joueurProtocol? {get set} //s'il y a une pièce renvoie le joueur qui l'a posé sinon renvoie vide
    

}
