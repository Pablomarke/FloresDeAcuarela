//
//  ItemSelectorWireframe.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 18/6/24.
//

import SwiftUI

enum ItemSelectorWireframe {
    static func createView() -> some View {
        let viewModel = BudgetViewModel()
        let view = ItemSelectorView(viewModel: viewModel)
        return view
    }
}
