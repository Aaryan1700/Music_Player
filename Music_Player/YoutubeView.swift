//
//  YoutubeView.swift
//  Music_Player
//
//  Created by V on 11/03/2025.
//

import SwiftUI
import WebKit

struct VideoSelectorView: View {
    var ids = ["b1oC7sLIgpI", "HyQgpxX__-A", "sZSlTDlo0Ag", "X"]
    @State var currentId = 0
    @State var isPlaying = false
    
    var body: some View {
        VStack {
            YouTubeView(videoId: ids[currentId])
                .frame(width: 350, height: 200)
                .padding()
            
            HStack {
                Button {
                    currentId -= 1
                    if currentId == -1 {
                        currentId += ids.count
                    }
                } label: {
                    Image(systemName: "backward")
                }
                
                Button {
                    isPlaying.toggle()
                } label: {
                    Image(systemName: isPlaying ? "pause": "play")
                }
                
                Button {
                    currentId += 1
                    if currentId == ids.count {
                        currentId -= ids.count
                    }
                } label: {
                    Image(systemName: "forward")
                }
                
            }
        }
    }
}


#Preview {
    VideoSelectorView()
}
