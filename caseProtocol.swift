//
//  caseProtocol.swift
//  
//
//

import Foundation


protocol caseProtocol{
    
    //init :  -> caseProtocol
    //fonction qui crée une case vide
    //données : 2 entiers x et y où x représente la ligne et y la colonne où se trouve la case
    //résultat : renvoie une case vide
    //post : estVide = true, piece=vide, joueur=vide
    init(x:Int,y:Int)
    
    var estVide : Bool {get set} // une case est vide s'il n'ya pas de pièce posée par un joueur
    var piece : NomPiece? {get set}//s'il y a une pièce renvoie la pièce sinon renvoie vide
    var joueur : joueurProtocol? {get set} //s'il y a une pièce renvoie le joueur qui l'a posé sinon renvoie vide
    var position : (Int,Int) {get} // renvoie la position de la case

}