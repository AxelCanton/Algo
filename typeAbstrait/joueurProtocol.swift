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
    
    var nbCylindreRestant : Int {get set} // Int compris entre 0 et 2
    var nbSphèreRestant : Int {get set}// Int compris entre 0 et 2
    var nbPyramideRestant : Int {get set}// Int compris entre 0 et 2
    var nbCubeRestant : Int {get set}// Int compris entre 0 et 2
    
}
