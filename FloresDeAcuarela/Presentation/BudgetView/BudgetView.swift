//
//  BudgetView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 11/6/24.
//

import SwiftUI

struct BudgetView: View {
    @StateObject var viewmodel: BudgetViewModel
    @State private var isShowingItemSelector = false
    
    var body: some View {
        VStack {
            HeaderView(title: "Presupuesto")
            Spacer()
            VStack {
                List(viewmodel.items) { item in
                    ObjectPriceView(object: item)
                    
                }
                Button("Añadir") {
                    self.isShowingItemSelector = true
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
        .sheet(isPresented: $isShowingItemSelector,
               content: {
            ItemSelectorView(viewModel: viewmodel)
        })
    }
}

#Preview {
    BudgetWireframe.createView()
}
