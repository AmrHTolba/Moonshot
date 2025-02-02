//
//  ListView.swift
//  Moonshot
//
//  Created by Amr El-Fiqi on 02/02/2025.
//

import SwiftUI

struct ListLayout: View {
    
    let missions : [Mission]
    let astronauts: [String:Astronaut]
    
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 70)
                            .containerRelativeFrame(.horizontal) { width, axis in
                                width * 0.25
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                        
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundStyle(.white.opacity(0.5))
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.lightBackground)
                        .clipShape(.rect(cornerRadius: 10))
                    }
                    
            }
            .listRowBackground(Color.darkBackground)
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
        }
        .listStyle(.plain)

    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    ListLayout(missions: missions, astronauts: astronauts)
        
}
