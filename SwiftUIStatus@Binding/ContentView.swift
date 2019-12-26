//
//  ContentView.swift
//  SwiftUIStatus@Binding
//
//  Created by Ramill Ibragimov on 26.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var rating = 1
    
    var body: some View {
        VStack {
            RatingView(rating: $rating)
            Text("Rating: \(rating)")
                .padding()
        }.padding()
    }
}

struct RatingView: View {
    @Binding var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1..<6) { value in
                Button(action: {
                    self.rating = value
                }) {
                    Image(systemName: value <= self.rating ? "star.fill" : "star")
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
