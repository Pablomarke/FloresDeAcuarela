//
//  ItemSelectorView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 18/6/24.
//

import SwiftUI

struct ItemSelectorView: View {
     var viewModel: BudgetViewModel
    
    var body: some View {
        Text("Hello, i´m item selector")
        
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
