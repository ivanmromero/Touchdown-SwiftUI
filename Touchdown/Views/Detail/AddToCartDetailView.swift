//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(15)
        .background(shop.selectedProduct?.armedColor ?? sampleProduct.armedColor)
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    AddToCartDetailView()
        .environmentObject(Shop())
        .padding()
}
