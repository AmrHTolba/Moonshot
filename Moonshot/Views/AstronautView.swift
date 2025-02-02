//
//  AstronautView.swift
//  Moonshot
//
//  Created by Amr El-Fiqi on 02/02/2025.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                Rectangle().line()
                Text("Background Information")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Text(astronaut.description)
                    .foregroundStyle(.white)
            }
            .padding()
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    AstronautView(astronaut: astronauts["white"]!)
        .preferredColorScheme(.dark)
}
