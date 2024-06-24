//
//  Sizes.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 24/6/24.
//

import Foundation

typealias SizesList = [Sizes]

enum Sizes: String, CaseIterable {
    case xtraSmall, small, medium, large, xtraLarge, custom

    var intValue: Int {
        switch self {
            case .xtraSmall:
                1
            case .small:
                2
            case .medium:
                3
            case .large:
                4
            case .xtraLarge:
                5
            case .custom:
                1
        }
    }
}

