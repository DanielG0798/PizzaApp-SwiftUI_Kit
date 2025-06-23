//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/16/25.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        VStack{
            HStack{
                Text("Your Order Item \(order)")
                Spacer()
            }
            HStack(alignment:.firstTextBaseline){
                Text(1, format:.number)
                Text(19.90, format: .currency(code: "USD"))
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
