//
//  Categories.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 24/6/24.
//

import Foundation

enum Categories: String, CaseIterable {
    case Regalos = "Regalos"
    case Tocados = "Tocados"
    case Basicos = "Básicos"
    case Hogar = "Hogar"
    case PlantLovers = "Plant lovers"
    case OUTLET = "OUTLET"
    
    var description: String {
        return rawValue
    }
}
