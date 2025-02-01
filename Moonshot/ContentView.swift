//
//  ContentView.swift
//  Moonshot
//
//  Created by Amr El-Fiqi on 01/02/2025.
//

import SwiftUI

struct ContentView: View {
    
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout ) {
                ForEach(1..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
