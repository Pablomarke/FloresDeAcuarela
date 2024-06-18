//
//  BudgetViewModel.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 11/6/24.
//

import Foundation

final class BudgetViewModel: ObservableObject {
    @Published var total: Double = 0
    @Published var items: FlowerItemList = .init()
    
    func addItem() {
        items.append(FlowerItem(name: "Florero 1",
                                price: 22.00))
        self.total =  self.calculateTotal()
    }
}

private extension BudgetViewModel {
    func calculateTotal() -> Double {
        self.items.reduce(0) { $0 + $1.price }
    }
}
