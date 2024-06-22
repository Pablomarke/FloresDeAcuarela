//
//  WebView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 6/6/24.
//

import SwiftUI
import WebKit

struct WebView: View {
    @StateObject var viewModel: WebViewViewModel
    
    var body: some View {
        WebViewer(url: viewModel.homeWeb)
    }
}

#Preview {
    WebViewWireframe.createView()
}
