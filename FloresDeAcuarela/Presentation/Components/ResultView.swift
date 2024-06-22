//
//  ResultView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 11/6/24.
//

import SwiftUI

struct ResultView: View {
    var total: Double
    
    var body: some View {
        HStack {
            Spacer()
            Text("Total")
                .font(.title)
            Spacer()
            Text("\(total) €")
            Spacer()
        }
    }
}

#Preview {
    ResultView(total: 16.54)
}
