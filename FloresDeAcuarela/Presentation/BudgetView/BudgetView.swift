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
        Text("presupuesto")
    }
}

#Preview {
    BudgetWireframe.createView()
}
