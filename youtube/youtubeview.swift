//
//  youtubeview.swift
//  iosFinal
//
//  Created by User02 on 2021/1/20.
//  Copyright © 2021 tflee. All rights reserved.
//

import SwiftUI

struct youtubeview: View {
    @State private var youtubes = [Item]()
    
    func fetchdyoutube() {
        
        
        let urlStr = "https://www.googleapis.com/youtube/v3/videos?id=jeqH4eMGjhY&key=AIzaSyDL0lV1bg6P8EZfsQ_wLrUGIrWJ-FN__P4&part=snippet"
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response , error) in
                
                if let data = data {
                    do {
                        let posts = try JSONDecoder().decode(SearchResult.self, from: data)
                        youtubes = posts.items
                    } catch  {
                        print(error)
                    }
                }
            }.resume()
        }
        
    }
    var youtube: Item
    var body: some View {
        Text(youtube.id)
    }
}

struct youtubeview_Previews: PreviewProvider {
    static var previews: some View {
        youtubeview(youtube: Item(id: "", snippet: snippet(channelId: "", title: "")))
    }
}
