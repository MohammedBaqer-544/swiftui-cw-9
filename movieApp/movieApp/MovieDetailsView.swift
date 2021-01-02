//
//  MovieDetailsView.swift
//  movieApp
//
//  Created by Mohammed on 1/2/21.
//

import SwiftUI

struct MovieDetailsView: View {
    
    let movie: Movie
    
    var body: some View {
        ZStack {
            Group {
                Image(movie.name)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }
            .ignoresSafeArea()

            VStack(alignment: .center) {
                Image(movie.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300.0, height: 300.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                
                Text(movie.name)
                    .font(.custom("AndikaNewBasic-Bold", size: 60))
                
                Text(movie.characters.joined(separator: ", "))
                    .font(.custom("(A) Arslan Wessam A (A) Arslan Wessam A", size: 40))
                
                Spacer()
            }
            .padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 8)
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: Movie(name: "Harry Potter", characters: ["Daniel", "Rupert", "Emma"]))
    }
}
