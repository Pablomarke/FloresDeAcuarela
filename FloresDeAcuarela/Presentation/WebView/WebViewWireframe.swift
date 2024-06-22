//
//  WebViewWireframe.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 22/6/24.
//

import SwiftUI

enum WebViewWireframe {
    static func createView() -> some View {
        let viewModel = WebViewViewModel()
        let view = WebView(viewModel: viewModel)
        return view
    }
}
