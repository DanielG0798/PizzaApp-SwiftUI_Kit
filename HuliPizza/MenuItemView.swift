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
            HStack {
                Text("Margherita Huli Pizza")
                    .shadow(radius: 2, x: -3, y: 2)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 4)
                    
                
                if let image = UIImage(named: "0_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top,.bottom], 5)
                        .cornerRadius(15)
//                        .clipShape(
//                            RoundedRectangle(
//                                cornerRadius: 10))
                    
                } else {
                    Image("WoodBoard")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(26))
                }
            }
            .background(.linearGradient(colors:[Color("Ranch"),Color("Flower").opacity(0.8)], startPoint: .leading, endPoint: .trailing), in:Capsule())
            .shadow(radius: 5, x: -4, y:8)

            VStack (alignment: .leading){
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut sem maximus lectus feugiat elementum in maximus urna. Nunc ut mi eu nulla vulputate aliquet id a velit. Maecenas interdum massa odio, id rhoncus leo venenatis nec. Duis nec pharetra dolor. Fusce suscipit sollicitudin libero, nec condimentum orci. Nulla nunc.")
                    // allows for dynamic type to work with paragraph custom font
                        .font(.custom("Georgia",size: 18,
                                      relativeTo: .body))
                }
            }
        }
    }
}

#Preview {
    MenuItemView()
}
