//
//  ContentView.swift
//  movieApp
//
//  Created by Mohammed on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(movies) { movie in 
                NavigationLink(destination: MovieDetailsView(movie: movie),
                               label: {
                                movieRow(movie: movie)
                               })
                
            }
            .navigationBarTitle("Movies")
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct movieRow: View {
    let movie: Movie
    
    var body: some View {
        HStack(alignment: .center) {
            Image(movie.name)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                .frame(width: 150.0, height: 150.0)
            
            VStack(alignment: .leading) {
                Text(movie.name)
                    .font(.custom("AndikaNewBasic-Bold", size: 31))
                
                Text(movie.characters.joined(separator: ", "))
                    .font(.custom("(A) Arslan Wessam A (A) Arslan Wessam A", size: 29))
                
            }
        }
    }
}
