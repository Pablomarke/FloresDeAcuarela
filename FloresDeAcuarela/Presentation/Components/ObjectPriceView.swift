//
//  ObjectPriceView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 11/6/24.
//

import SwiftUI

protocol ObjectSalable {
    var name: String { get }
    var price: Double { get }
    var amount: Int { get }
}

struct ObjectPriceView: View {
    var object: ObjectSalable
    
    var body: some View {
        HStack {
            Text(object.name)
                .padding()
            Spacer()
            Text("X \(object.amount) Uds.")
                .padding()
            Spacer()
            Text("\(object.price) €")
                .padding()
        }
    }
}
