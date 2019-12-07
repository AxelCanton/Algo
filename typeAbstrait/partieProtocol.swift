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
    
    //init : joueurProtocol x joueurProtocol x plateauProtocol -> partieProtocol
    //fonction qui à partir de 2 joueurs et un plateau créée une partie 
    //données : 2 joueurs différents : j1 correspond au joueur1 et j2 correspond au joueur2 et un plateau vide : plateau constitué de cases vides
    //résultat : Une partie créée 
    //post : partieFinie = false
    init(j1:joueurProtocol, j2:joueurProtocol,plateau:plateauProtocol)
    
    //partieFinie : partieProtocol -> Bool
    //post : partieFinie = true si :
    //-le joueur ne peut plus poser de pions : il y a déjà un pion du joueur adverse de la même forme sur la même ligne ou même colonne ou même région
    //-le joueur place son pion sur une case et que dans la même région ou même ligne ou même colonne il y a les 4 formes
    func partieFinie()->Bool
    
    
}
