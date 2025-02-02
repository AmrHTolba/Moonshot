//
//  ContentView.swift
//  Moonshot
//
//  Created by Amr El-Fiqi on 01/02/2025.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    @State private var isGrid = true
    
    var body: some View {
        NavigationStack {
            Group {
                if isGrid {
                    ScrollView {
                        GridLayout(missions: missions, astronauts: astronauts)
                    }
                } else {
                    ListLayout(missions: missions, astronauts: astronauts)
                }
            }
            .toolbar {
                Button("Switch Layout") {
                    isGrid.toggle()
                }
            }
            .navigationTitle("Moonshot")
            .preferredColorScheme(.dark)
            .background(.darkBackground)
        }
    }
}

#Preview {
    ContentView()
}
