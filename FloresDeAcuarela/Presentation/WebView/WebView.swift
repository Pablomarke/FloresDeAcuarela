//
//  WebView.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 6/6/24.
//

import SwiftUI
import WebKit

struct WebView: View {
    var body: some View {
        WebViewer(url: URL(string: "https://www.floresdeacuarela.com")!)
                   .edgesIgnoringSafeArea(.all)
    }
}

struct WebViewer: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

#Preview {
    WebView()
}
