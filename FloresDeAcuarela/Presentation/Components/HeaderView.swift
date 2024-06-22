//
//  HeaderView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 11/6/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .padding()
            Spacer(minLength: 60)
            Image(systemName: "map")
                .padding()
        }
        .frame(height: 60)    }
}

#Preview {
    HeaderView(title: "Prueba")
}
