//
//  ArtistResponse.swift
//  MusicByLocationSwiftUIPractice
//
//  Created by David Cormell on 10/05/2021.
//

import Foundation

struct ArtistResponse: Codable {
    var count: Int
    var results: [Artist]
    
    private enum CodingKeys: String, CodingKey {
        case count = "resultCount"
        case results
    }
}
