//
//  plateauProtocol.swift
//  
//
//

import Foundation

protocol plateauProtocol{
    var plat : [[caseProtocol]] {get set}//tableau de 4x4 cases
    
    //init : -> plateauProtocol
    //fonction qui créée un plateau vide
    //données : rien
    //résultat : un plateau vide contenant 16 cases vides
    init()
}
