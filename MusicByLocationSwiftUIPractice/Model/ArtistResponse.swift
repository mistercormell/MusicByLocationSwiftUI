//
//  ArtistResponse.swift
//  MusicByLocationSwiftUIPractice
//
//  Created by David Cormell on 10/05/2021.
//

import Foundation

struct ArtistResponse: Codable {
    var resultCount: Int
    var results: [Artist]
}
