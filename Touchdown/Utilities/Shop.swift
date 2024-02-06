//
//  Shop.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
