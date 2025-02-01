//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Amr El-Fiqi on 01/02/2025.
//

import Foundation


extension Bundle {
    func decode(_ file: String) -> [String:Astronaut] {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String:Astronaut].self, from: data) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        return loaded
    }
}
