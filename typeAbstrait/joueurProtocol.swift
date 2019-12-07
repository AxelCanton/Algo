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
    //post : on initialise à 2 le nbRestant de pièces de chaque forme
    init(nom:String)
    
    //fonction qui renvoie le nombre de pièces jouables correspondant à la pièce passée en paramètre
    ////donnée : valeur de l'enum NomPiece correspondant à la pièce dont on veut obtenir le nb restant
    //post : entier compris entre 0 et 2
    func nbRestant(piece:NomPiece) -> Int
    
    //fonction qui décrémente de 1 le nombre de pièce de la pièce passée en paramètre possédée par le joueur
    //donnée : valeur de l'enum NomPiece correspondant à la pièce qu'on veut décrémenter
    //post : nombre
    //post: si le nombre de pièces de la pièce passée en paramètres vaut 0 (le joueur ne possède plus cette pièce), renvoie une erreur
    mutating func decrementer(piece:NomPiece) throws
    
}
