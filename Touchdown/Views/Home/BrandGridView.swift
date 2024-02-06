//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout)  {
    BrandGridView()
        .background(colorBackground)
}
