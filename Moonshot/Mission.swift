//
//  Mission.swift
//  Moonshot
//
//  Created by Amr El-Fiqi on 01/02/2025.
//

import Foundation



struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: String
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
