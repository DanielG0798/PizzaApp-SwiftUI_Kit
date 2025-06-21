//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/19/25.
//

import SwiftUI

struct RatingsView: View {
    @State private var rating: Int = Int.random(in: 1...5)
    var body: some View {
        HStack{
            Text("Rating ")
            ForEach(1...5, id: \.self) {
                idx in Image(systemName: idx <= rating ? "fork.knife.circle.fill" : "circle")
                    .foregroundColor (idx <= rating ? .accentColor : .gray)
            }
        }
        .padding()
                .onAppear {
                    rating = Int.random(in: 1...5)
                    print("Random rating: \(rating)")
                }
    }
}


#Preview {
    RatingsView()
}
