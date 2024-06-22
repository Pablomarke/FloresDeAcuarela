//
//  WebViewer.swift
//  FloresDeAcuarela
//
//  Created by Pablo Márquez Marín on 22/6/24.
//

import SwiftUI
import WebKit

struct WebViewer: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView,
                      context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

#Preview {
    WebViewer(url: URL(string: "www.google.com")!)
}
