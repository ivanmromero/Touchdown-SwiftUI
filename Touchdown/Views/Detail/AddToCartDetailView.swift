//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(15)
        .background(sampleProduct.armedColor)
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    AddToCartDetailView()
        .padding()
}
