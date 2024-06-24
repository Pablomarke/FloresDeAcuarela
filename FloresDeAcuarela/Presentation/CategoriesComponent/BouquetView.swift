//
//  BouquetView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 24/6/24.
//

import SwiftUI

struct BouquetView: View {
    @Binding var size: Sizes
    @Binding var quality: Quality
    var item: SizesList = Sizes.allCases
    var qualityItem: QualityList = Quality.allCases
    @ObservedObject var viewModel: BudgetViewModel
    
    var body: some View {
        VStack {
            Text("Selecciona:")
            Picker("",
                   selection: $size) {
                ForEach(item,
                        id: \.self) { size in
                    Text(size.rawValue)
                }
            }
                   .onChange(of: size) { newValue in
                       viewModel.bouquet()
                   }
                   .pickerStyle(.palette)
                   .padding()
            Picker("",
                   selection: $quality) {
                ForEach(qualityItem,
                        id: \.self) { size in
                    Text(size.rawValue)
                }
            }
                   .onChange(of: quality) { newValue in
                       viewModel.bouquet()
                   }
                   .pickerStyle(.palette)
                   .padding()
            if viewModel.customPrice {
                Text("Introduce precio")
                TextField("Precio",
                          text: $viewModel.itemPrice)
            }
        }
    }
}
