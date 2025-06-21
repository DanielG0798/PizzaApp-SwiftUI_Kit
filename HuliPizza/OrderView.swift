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
        VStack{// Page image
            // Cart icon and total price
            Label{
                Text(59.99,format: .currency(code: "USD"))
            }
        icon:{
            Image(systemName: orders.isEmpty ? "cart" :
                    "cart.circle.fill")
        }
            // Order Pizza item list
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            // List of orders
            ScrollView{
                ForEach(orders, id:\.self){order in
                    OrderRowView(order: order)
                }
            }
        }
    }
}


#Preview {
    OrderView(orders: [1,2,3,4,6])
}
