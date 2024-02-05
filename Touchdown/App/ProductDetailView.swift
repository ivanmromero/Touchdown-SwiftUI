//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5) {
                // NAVBAR
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)
                
                // HEADER
                HeaderDetailView()
                    .padding(.horizontal)
                
                // DETAIL TOP PART
                TopPartDetailView()
                    .padding(.horizontal)
                
                // DETAIL BOTTOM PART
                // RATINGS + SIZES
                // DESCRIPTION
                // QUANTITY + FAVOURITE
                // ADD TO CART
                Spacer()
            }
            .ignoresSafeArea(.all, edges: .all)
            .background(sampleProduct.armedColor)
        }
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 812)) {
    ProductDetailView()
}
