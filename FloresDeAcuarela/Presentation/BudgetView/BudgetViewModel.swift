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
    @Published var itemAmount: String = .init()
    @Published var size: Sizes = Sizes.xtraSmall
    @Published var quality: Quality = Quality.basic
    @Published var customPrice: Bool = false
    
    func addItem() {
        if let price = Double(itemPrice), let amount = Int(itemAmount) {
            items.append(FlowerItem(name: itemName,
                                    price: price,
                                    amount: amount))
            self.total =  self.calculateTotal()
            self.cleanItems()
        }
    }
    
    func bouquet() {
        self.itemName = "Ramo tamaño \(size.rawValue) y tipo \(quality.rawValue)"
        self.itemAmount = "1"
        self.itemPrice = String(self.size.intValue * self.quality.intValue)
        if self.size.intValue == 1 || self.quality.intValue == 1 {
            self.itemPrice = "Precio"
            self.customPrice = true
        }
    }
}

private extension BudgetViewModel {
    func calculateTotal() -> Double {
        self.items.reduce(0) { ($0 + $1.price) * Double($1.amount) }
    }
    
    func cleanItems() {
        itemName = ""
        itemPrice = ""
        itemAmount = ""
    }
}
