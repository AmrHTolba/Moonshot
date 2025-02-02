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
    
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
