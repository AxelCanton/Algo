//
//  joueurProtocol.swift
//  
//
//

import Foundation

protocol joueurProtocol {
    
    var nomJoueur : String {get} // chaque joueur possède un nom
    
    //init : -> joueurProtocol
    //fonction qui créée un joueur à partir de son nom
    //données : une chaîne de caractères représentant le nom du joueur
    //résultat : un joueur créé
    //post : nbCylindreRestant = 2, nbSphèreRestant = 2, nbPyramideRestant = 2, nbCubeRestant = 2
    init(nom:String)
    
    //fonction qui renvoie le nombre de pièces jouables correspondant à la pièce passée en paramètre
    ////donnée : valeur de l'enum NomPiece correspondant à la pièce dont on veut obtenir le nb restant
    //post : entier compris entre 0 et 2
    func nbRestant(piece:NomPiece) -> Int
    
    //fonction qui décrémente de 1 le nombre de pièce de la pièce passée en paramètre possédé par le joueur
    //donnée : valeur de l'enum NomPiece correspondant à la pièce qu'on veut décrémenter
    //post : nombre
    mutating func decrementer(piece:NomPiece)
    
}
