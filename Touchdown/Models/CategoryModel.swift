//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
