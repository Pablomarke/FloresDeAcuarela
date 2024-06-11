//
//  BudgetWireframe.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 11/6/24.
//

import SwiftUI

enum BudgetWireframe {
    static func createView() -> some View {
        let viewModel = BudgetViewModel()
        let view = BudgetView(viewmodel: viewModel)
        return view
    }
}
