//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } header: {
                    SectionView(rotateClockwise: false)
                } footer: {
                    SectionView(rotateClockwise: true)
                }
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
        .scrollIndicators(.hidden)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
