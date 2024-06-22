//
//  FloresDeAcuarelaApp.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 6/6/24.
//

import SwiftUI

@main
struct FloresDeAcuarelaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
