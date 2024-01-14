//
//  ContentView.swift
//  SampleLazyVGrid
//
//  Created by 宮野智宏 on 2024/01/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let symbols = [
            "pencil",
            "pencil.circle",
            "pencil.circle.fill",
            "pencil.slash",
            "square.and.pencil",
            "rectangle.and.pencil.and.ellipsis",
            "highlighter",
            "pencil.and.outline",
            "pencil.tip",
            "pencil.tip.crop.circle",
            "pencil.tip.crop.circle.badge.plus",
            "pencil.tip.crop.circle.badge.minus",
            "pencil.tip.crop.circle.badge.arrow.forward",
            "lasso",
            "lasso.and.sparkles",
            "trash",
            "trash.fill",
            "trash.circle",
            "trash.circle.fill",
            "trash.square",
            "trash.square.fill",
            "trash.slash"
        ]
        // 列の数を決める
        let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(symbols, id: \.self) { symbol in
                    Image(systemName: symbol)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(20)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
