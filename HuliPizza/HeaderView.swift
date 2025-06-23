//
//  HeaderRowView.swift
//  HuliPizza
//
//  Created by Daniel Garciamoreno Ortiz on 6/16/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .center){
            Image("Ranch")
                .resizable()
                .frame(width: 400, height: 120)
                .overlay(Rectangle().stroke(Color("Flower"), lineWidth: 5))
            Text("Huli Pizza Company")
                .fontWeight(.bold)
                .font(.custom("Georgia", size: 30,
                              relativeTo: .title).italic())
                .shadow(color: .black.opacity(1), radius: 2, x: 3, y: 2)
                .foregroundColor(Color("Ranch"))
//                .foregroundStyle(.regularMaterial)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View{
        HeaderView()
    }
}
