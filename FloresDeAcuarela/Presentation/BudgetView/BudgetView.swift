//
//  BudgetView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 11/6/24.
//

import SwiftUI

struct BudgetView: View {
    @ObservedObject var viewmodel: BudgetViewModel
    
    var body: some View {
        VStack {
            HeaderView(title: "Presupuesto")
            Spacer()
                VStack {
                    List(viewmodel.items) { item in
                        ObjectPriceView(object: item)
    
                    }
                    Button("Añadir") {
                        viewmodel.addItem()
                    }
                    .padding()
            }
            Spacer()
            HStack {
                Text("Descuento")
                Text("0,00 %")
            }
            ResultView(total: viewmodel.total)
        }
    }
}

#Preview {
    BudgetWireframe.createView()
}
