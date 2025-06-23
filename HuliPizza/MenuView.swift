//
//  MenuView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/16/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
            ScrollView{
                ForEach(1...10, id:\.self){ item in
                    MenuRowView(item: item)
                }
            }
    }
}

#Preview {
    MenuView()
}
