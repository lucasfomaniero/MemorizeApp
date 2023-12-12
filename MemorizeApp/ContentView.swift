//
//  ContentView.swift
//  MemorizeApp
//
//  Created by Lucas Maniero on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView(isFaceUp: true)
        }
        .padding()
    }
}

struct CardView: View {
    
    var isFaceUp: Bool = false
    
    var body: some View {
        GeometryReader { g in
            ZStack{
                if isFaceUp {
                    RoundedRectangle(cornerRadius: 12).foregroundStyle(.white).frame(height: g.size.height / 2)
                    RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 2.0).foregroundColor(.orange)
                        .frame(height: g.size.height / 2)
                    Text("👻").font(.largeTitle)
                } else {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.orange)
                        .frame(height: g.size.height / 2)
                    
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
