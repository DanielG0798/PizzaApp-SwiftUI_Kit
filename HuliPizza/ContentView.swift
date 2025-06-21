//
//  ContentView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/10/25.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1,2,3,5]
    var body: some View {
        VStack {
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}

