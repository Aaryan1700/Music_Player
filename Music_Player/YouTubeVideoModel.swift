//
//  YouTubeVideoView.swift
//  Music_Player
//
//  Created by V on 11/03/2025.
//

import SwiftUI
import WebKit

struct YouTubeView: UIViewRepresentable {
    let videoId: String
    
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)") {
            uiView.scrollView.isScrollEnabled = false
            uiView.load(URLRequest(url: demoURL))
        }
        else {
            print("Video cannot be played")
        }
    }
}
