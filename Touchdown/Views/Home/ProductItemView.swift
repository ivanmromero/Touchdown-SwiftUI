//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(product.armedColor)
            .clipShape(.rect(cornerRadius: 12))
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 200, height: 300) ) {
    ProductItemView(product: products[0])
        .padding()
        .background(colorBackground)
}
