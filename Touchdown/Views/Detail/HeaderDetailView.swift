//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundStyle(.white)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(.gray)
}
