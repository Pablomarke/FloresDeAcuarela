//
//  ItemSelectorView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 18/6/24.
//

import SwiftUI

struct ItemSelectorView: View {
    @ObservedObject var viewModel: BudgetViewModel
    @State private var selected = Categories.regalos.rawValue
    
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
            case Categories.ramo.rawValue:
                BouquetView(size: $viewModel.size,
                            quality: $viewModel.quality,
                            viewModel: viewModel)
            case Categories.basicos.rawValue:
                BasicsView()
            case Categories.hogar.rawValue:
                HomesView()
            case Categories.outlet.rawValue:
                OutletView()
            case Categories.plantLovers.rawValue:
                PlantLoverView()
            case Categories.tocados.rawValue:
                HeaddressesView()
            case Categories.regalos.rawValue:
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
/*
 #Preview {
 ItemSelectorView(viewModel: BudgetViewModel())
 }*/

