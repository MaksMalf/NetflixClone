//
//  YoutubeSearchResponse.swift
//  NetflixClone
//
//  Created by Maksim Malofeev on 9/30/22.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
