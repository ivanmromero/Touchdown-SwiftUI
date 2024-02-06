//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    let brand: Brand
    
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.clipShape(.rect(cornerRadius: 12)))
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            }
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
