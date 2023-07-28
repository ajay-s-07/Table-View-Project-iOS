//
//  File.swift
//  Sample2
//
//  Created by Ajay Sarkate on 26/07/23.
//

import Foundation

struct SearchResult: Decodable {
    var results: [Result]
}

struct Result: Decodable {
    let artistName: String
    let trackName: String
    let artworkUrl100: String
}


