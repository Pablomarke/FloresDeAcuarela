//
//  TabItemComponent.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 11/6/24.
//

import SwiftUI

struct TabItemComponent <Content: View>: View  {
    var view: Content
    var name: String
    var systemImage: SystemImageName
    
    enum SystemImageName: String {
        case web = "network"
        case presupuesto = "book.pages"
        case history = "books.vertical"
    }
    
    var body: some View {
        view
            .tabItem {
                Label(name,
                      systemImage: systemImage.rawValue)
            }
    }
}

#Preview {
    TabItemComponent(view: WebView(),
                     name: "Web",
                     systemImage: .web)
}
