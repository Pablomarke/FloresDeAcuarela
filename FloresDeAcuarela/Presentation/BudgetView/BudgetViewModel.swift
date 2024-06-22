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
    @Published var itemName: String = .init()
    @Published var itemPrice: String = .init()
    let categories = ["Regalos", "Tocados", "Básicos", "Hogar", "Plant lovers", "OUTLET"]
    
    func addItem() {
        if let price = Double(itemPrice) {
            items.append(FlowerItem(name: itemName,
                                    price: price))
            self.total =  self.calculateTotal()
            self.cleanItems()
        }
    }
}

private extension BudgetViewModel {
    func calculateTotal() -> Double {
        self.items.reduce(0) { $0 + $1.price }
    }
    
    func cleanItems() {
        itemName = ""
        itemPrice = ""
    }
}
