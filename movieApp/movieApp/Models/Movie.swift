//
//  Movie.swift
//  movieApp
//
//  Created by Mohammed on 1/2/21.
//

import Foundation

struct Movie: Identifiable {
    let name: String
    let characters: [String]
    
    let id = UUID()
}

let movies = [
    Movie(name: "Harry Potter", characters: ["Daniel", "Rupert", "Emma"]),
    Movie(name: "Interstellar", characters: ["Matthew", "Anne", "Jessica"]),
    Movie(name: "Passengers", characters: ["Chris", "Jennifer", "Michael"])
]
