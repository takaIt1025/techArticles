//
//  WebVIew.swift
//  techArticles-iOS (iOS)
//
//  Created by Takaya Ito on 2022/10/17.
//

import UIKit
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let text: String
    private let webView = WKWebView()
    
    @Binding var dynamicHeight: CGFloat
    
    func makeUIView(context: Context) -> WKWebView {
        webView.navigationDelegate = context.coordinator
        webView.scrollView.bounces = false
        
        let htmlStart = """
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="style.css">
            <title>Document</title>
        </head>
        <body>
        """
        let htmlEnd = "</body></html>"
        let html = htmlStart + text + htmlEnd
        /// CSSのファイルURLを取得する
        let css = Bundle.main.url(forResource: "style", withExtension: "css")
        webView.loadHTMLString(html, baseURL: css)
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }

        // 表示できたらWebViewのコンテンツのサイズを計算する
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            webView.evaluateJavaScript("document.documentElement.scrollHeight", completionHandler: { (height, error) in
                DispatchQueue.main.async {
                    self.parent.dynamicHeight = height as! CGFloat
                }
            })
        }
        
        // HTMLリンクをタップした時にSafariで開くようにしている
        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if navigationAction.navigationType == .linkActivated  {
                if let url = navigationAction.request.url,
                   UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url)
                    decisionHandler(.cancel)
                } else {
                    decisionHandler(.allow)
                }
            } else {
                decisionHandler(.allow)
            }
        }
    }
}
