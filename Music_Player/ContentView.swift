//
//  ContentView.swift
//  Music_Player
//
//  Created by V on 10/03/2025.
//

import SwiftUI
import AVKit
import WebKit

struct WebView: UIViewControllerRepresentable {
    var url: URL
    
    func makeUIViewController(context: Context) -> ViewController {
        let viewController = ViewController()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        let request = URLRequest(url: url)
        uiViewController.webView.load(request)
    }
}

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.youtube.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}

struct ContentView: View {
    @State var youtubeURL = URL(string: "https://www.youtube.com/watch?v=1JGNwfii30s")!
    
    var body: some View {
        VStack {
            WebView(url: youtubeURL)
                            .frame(width: 320, height: 240)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
