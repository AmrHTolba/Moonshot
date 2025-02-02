//
//  Color-Theme.swift
//  Moonshot
//
//  Created by Amr El-Fiqi on 02/02/2025.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
            Color(red: 0.2, green: 0.2, blue: 0.3)
        }
}


extension Rectangle  {
    func line() -> some View {
        return Rectangle().frame(height: 2).foregroundStyle(.lightBackground).padding(.vertical)
    }
}
