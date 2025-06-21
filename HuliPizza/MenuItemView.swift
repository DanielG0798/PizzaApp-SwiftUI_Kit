//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/16/25.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack{
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
            } else {
                Image(systemName: "circle.fill")
                    .font(.largeTitle)
            }
            Text("Margherita")
            Text("Description")
        }
    }
}

#Preview {
    MenuItemView()
}
