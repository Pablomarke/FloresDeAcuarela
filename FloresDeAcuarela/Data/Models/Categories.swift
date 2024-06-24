//
//  Categories.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 24/6/24.
//

import Foundation

enum Categories: String, CaseIterable {
    case regalos = "Regalos"
    case tocados = "Tocados"
    case basicos = "Básicos"
    case hogar = "Hogar"
    case plantLovers = "Plant lovers"
    case outlet = "OUTLET"
    case ramo = "Ramo"
    
    var description: String {
        return rawValue
    }
}
