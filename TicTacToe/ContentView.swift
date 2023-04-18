//
//  ContentView.swift
//  TicTacToe
//
//  Created by Students on 02.01.2023.
//

import SwiftUI

let colums: [GridItem] = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible()),
]

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: colums) {
                    ForEach(0..<9) { index in
                       Circle()
                            .foregroundColor(.brown.opacity(0.4))
                            .frame(
                                width: geometry.size.width/3 - 15,
                                height: geometry.size.width/3 - 15)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
