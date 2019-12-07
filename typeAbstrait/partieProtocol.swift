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
    
    //init : joueurProtocol x joueurProtocol -> partieProtocol
    //fonction qui à partir de 2 joueurs créée une partie avec un plateau
    //données : 2 joueurs différents : j1 correspond au joueur1 et j2 correspond au joueur2
    //résultat : Une partie créée avec le plateau vide correspondant
    //post : partieFinie = false
    init(j1:joueurProtocol, j2:joueurProtocol)
    
    //partieFinie : partieProtocol -> Bool
    //post : partieFinie = true si :
    //-le joueur ne peut plus poser de pions : il y a déjà un pion du joueur adverse de la même forme sur la même ligne ou même colonne ou même région
    //-le joueur place son pion sur une case et que dans la même région ou même ligne ou même colonne il y a les 4 formes
    func partieFinie()->Bool
    
    
}
