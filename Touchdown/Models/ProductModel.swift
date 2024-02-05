//
//  ProductModel.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var armedColor: Color {
        let red: Double = color[0]
        let green: Double = color[1]
        let blue: Double = color[2]
        
        return Color(red: red, green: green, blue: blue)
    }
    
    var formattedPrice: String {
        "$\(price)"
    }
}

