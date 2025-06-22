//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/16/25.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int
    var body: some View {
        HStack(alignment:.top,spacing: 15){
            if let image = UIImage(named: "\(item)_sm"){
                Image(uiImage: image)
            } else {
                Image(systemName: "circle.fill")
                    .font(.largeTitle)
            }
            VStack (alignment:.leading) {
                Text("Margherita")
                RatingsView(rating: 4)
            }
        }

    }
}

#Preview {
    MenuRowView(item: 4)
}
