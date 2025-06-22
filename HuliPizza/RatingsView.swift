//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/19/25.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    var body: some View {
        HStack{
            Text("Rating ")
            ForEach(1...5, id: \.self) {
                circle in Image(systemName: circle <= rating ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}


#Preview {
    RatingsView(rating: 4)
}
