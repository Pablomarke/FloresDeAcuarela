//
//  ItemSelectorView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 18/6/24.
//

import SwiftUI

struct ItemSelectorView: View {
    @ObservedObject var viewModel: BudgetViewModel
    @State private var selected = Categories.Regalos.rawValue
    
    var body: some View {
        Picker("Selecciona categoría",
               selection: $selected) {
            ForEach(Categories.allCases,
                    id: \.self) { categorie in
                Text(categorie.rawValue).tag(categorie.rawValue)
            }
        }
               .pickerStyle(SegmentedPickerStyle())
               .padding()
        Spacer()
        switch selected {
            case Categories.Basicos.rawValue:
                BasicsView()
            case Categories.Hogar.rawValue:
                HomesView()
            case Categories.OUTLET.rawValue:
                OutletView()
            case Categories.PlantLovers.rawValue:
                PlantLoverView()
            case Categories.Tocados.rawValue:
                HeaddressesView()
            case Categories.Regalos.rawValue:
                GiftsView()
            default:
                BasicsView()
        }
        Spacer()
        TextField("name",
                  text: $viewModel.itemName)
        TextField("price",
                  text: $viewModel.itemPrice)
        TextField("amount",
                  text: $viewModel.itemAmount)
        
        Button("Añadir") {
            viewModel.addItem()
        }
        .padding(.bottom)
    }
}

#Preview {
    ItemSelectorView(viewModel: BudgetViewModel())
}

