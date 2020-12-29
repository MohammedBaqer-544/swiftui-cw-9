//
//  ContentView.swift
//  movieApp
//
//  Created by Mohammed on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            movieRow(movieName: "Harry Potter", movieCharachters: ["Daniel", "Rupert", "Emma"])
            movieRow(movieName: "Interstellar", movieCharachters: ["Matthew", "Anne", "Jessica"])
            movieRow(movieName: "Passengers", movieCharachters: ["Chris", "Jennifer", "Michael"])
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct movieRow: View {
    
    let movieName: String
    let movieCharachters: [String]
    
    var body: some View {
        HStack(alignment: .center) {
            Image(movieName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 150.0, height: 150.0)
            
            VStack(alignment: .leading) {
                Text(movieName)
                    .font(.largeTitle)
                
                Text(movieCharachters.joined(separator: ", "))
                
                
            }
        }
    }
}
