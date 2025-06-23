//
//  OrderView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/18/25.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    var body: some View {
        ZStack(alignment: .top){
            // List of orders
            ScrollView{
                ForEach(orders, id:\.self){order in
                    OrderRowView(order: order)
                        .padding(4)
                        .background(.regularMaterial)
                        .cornerRadius(10)
                        .shadow(radius: 1, x:-3 , y:5)
                        .padding([.leading, .trailing], 10)
                }
            }
            .padding(.top,70)
            // Cart icon and total price
            HStack{
                Text("Order Pizza")
                .font(.title)
                Spacer()
                Label{
                    Text(59.99,format: .currency(code: "USD"))
                }
                
            icon:{
                Image(systemName: orders.isEmpty ? "cart" :
                        "cart.circle.fill")
                }
                
            }
            .padding()
            .background(.ultraThinMaterial)
        }
        .padding()
        .background(Color("Ranch"))
        
    }
}


#Preview {
    OrderView(orders: [1,2,3,4,6])
}
