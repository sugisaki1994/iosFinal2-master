//
//  youtube.swift
//  iosFinal
//
//  Created by User02 on 2021/1/20.
//  Copyright © 2021 tflee. All rights reserved.
//

import Foundation


struct SearchResult:Codable {
    let items: [Item]
}
struct Item: Codable {
    let id : String
    
    
    var snippet: snippet
    
    struct snippet: Codable {
        let channelId: String
        let title: String
    }
    
}
