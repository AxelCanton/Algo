//
//  pieceProtocol.swift
//  
//
//

import Foundation

enum NomPiece : String {
    case Cylindre
    case Sphere
    case Cube
    case Cone
}

protocol pieceProtocol {
    
    var nomPiece : NomPiece {get}
    
    // init :  NomPiece -> pieceProtocol
    //fonction qui créée une pièce avec son nom
    //données : nom de la pièce
    //résultat : renvoie la pièce créée
    init(nomPiece:NomPiece)
    
    
}
