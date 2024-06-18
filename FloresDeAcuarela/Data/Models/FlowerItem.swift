//
//  FlowerItem.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 18/6/24.
//

import Foundation

typealias FlowerItemList = [FlowerItem]

struct FlowerItem: Identifiable, ObjectSalable {
    let id = UUID()
    let name: String
    let price: Double
}
