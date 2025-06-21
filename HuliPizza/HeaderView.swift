//
//  HeaderRowView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/16/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("Ranch")
                .resizable()
                .scaledToFit()
            Text("Huli Pizza Company")
                .colorInvert()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View{
        HeaderView()
    }
}
