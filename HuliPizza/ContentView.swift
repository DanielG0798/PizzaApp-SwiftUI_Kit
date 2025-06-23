//
//  ContentView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/10/25.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1,2,3,5]
    var showOrders: Bool = false
    var body: some View {
        VStack {
            HeaderView()
            if showOrders{
                OrderView(orders: orders)
                    .cornerRadius(10)
            }else{
                MenuItemView()
                    .padding(8)
                    .background(.thinMaterial, in:
                    RoundedRectangle(cornerRadius: 10)
                    )
                MenuView()
            }
            Spacer()
        }
        .padding()
        .background(.linearGradient(colors:[Color("Ranch"),Color("Flower").opacity(0.8),Color("Flower").opacity(0.5)],startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}
#Preview {
    ContentView()
}

