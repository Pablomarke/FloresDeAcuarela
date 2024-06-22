//
//  ItemSelectorView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 18/6/24.
//

import SwiftUI

struct ItemSelectorView: View {
   @ObservedObject var viewModel: BudgetViewModel
    
    var body: some View {
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
