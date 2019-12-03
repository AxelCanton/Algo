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
    
    //nbCylindreRestant : joueurProtocol -> Int
    //fonction qui renvoie le nombre de Cylindre restant au joueur
    //post : renvoie un entier compris entre 0 et 2
    func nbCylindreRestant()->Int
    
    //nbSphèreRestant : joueurProtocol -> Int
    //fonction qui renvoie le nombre de Sphères restant au joueur
    //post : renvoie un entier compris entre 0 et 2
    func nbSphereRestant()->Int
    
    //nbPyramideRestant : joueurProtocol -> Int
    //fonction qui renvoie le nombre de Pyramide restant au joueur
    //post : renvoie un entier compris entre 0 et 2
    func nbPyramideRestant()->Int
    
    //nbCubeRestant : joueurProtocol -> Int
    //fonction qui renvoie le nombre de Cube restant au joueur
    //post : renvoie un entier compris entre 0 et 2
    func nbCubeRestant()->Int
    
    
}
