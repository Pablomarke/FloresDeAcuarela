//
//  HomeView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 6/6/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            TabItemComponent(view: HistoryView(),
                             name: "Histórico",
                             systemImage: .history)
            
            TabItemComponent(view: BudgetWireframe.createView(),
                             name: "Presupuesto",
                             systemImage: .presupuesto)
            
            TabItemComponent(view: WebViewWireframe.createView(),
                             name: "Web",
                             systemImage: .web)
        }
    }
}

#Preview {
    HomeView()
}
