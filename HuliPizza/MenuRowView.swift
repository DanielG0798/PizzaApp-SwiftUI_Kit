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
        HStack(alignment:.top,spacing: 40){
            if let image = UIImage(named: "\(item)_sm"){
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            } else {
                Image("WoodBoard")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 60)
                        .padding(.leading, -15)
                        .padding(.trailing, -25)
                        .rotationEffect(.degrees(26))
            }
            VStack (alignment:.leading) {
                Text("Margherita")
                RatingsView(rating: 4)
            }
            Spacer()
        }

    }
}

#Preview {
    MenuRowView(item: 4)
}
