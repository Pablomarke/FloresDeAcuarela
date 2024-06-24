//
//  Quality.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 24/6/24.
//

import Foundation

typealias QualityList = [Quality]

enum Quality: String, CaseIterable {
    case basic, premium, custom
    
    var intValue: Int {
        switch self {
            case .basic:
                100
            case .premium:
                150
            case .custom:
                1
        }
    }
}
