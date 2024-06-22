//
//  ItemSelectorView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 18/6/24.
//

import SwiftUI

struct ItemSelectorView: View {
    @ObservedObject var viewModel: BudgetViewModel
    @State private var selected = "Hogar"
    
    var body: some View {
        Picker("Selecciona categoría",
               selection: $selected) {
            ForEach(viewModel.categories,
                    id: \.self) { categorie in
                Text(categorie).tag(categorie)
            }
        }
               .pickerStyle(SegmentedPickerStyle())
               .padding()
        TextField("name",
                  text: $viewModel.itemName)
        TextField("price",
                  text: $viewModel.itemPrice)
        
        Button("Añadir") {
            viewModel.addItem()
        }
    }
}

struct ItemSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = BudgetViewModel()
        return ItemSelectorView(viewModel: viewModel)
    }
}
