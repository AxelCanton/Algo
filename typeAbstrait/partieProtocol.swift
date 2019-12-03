//
//  partieProtocol.swift
//  
//
//

import Foundation

protocol partieProtocol {
    var plateau : plateauProtocol{get}
    var joueur1 : joueurProtocol {get}
    var joueur2 : joueurProtocol {get}
    var partieFinie : Bool {get set}
    
    //init : joueurProtocol x joueurProtocol -> partieProtocol
    //fonction qui à partir de 2 joueurs créée une partie avec un plateau
    //données : 2 joueurs différents
    //résultat : Une partie créée avec le plateau vide correspondant
    //post : partieFinie = false
    init(j1:joueurProtocol, j2:joueurProtocol)
    
    
}
