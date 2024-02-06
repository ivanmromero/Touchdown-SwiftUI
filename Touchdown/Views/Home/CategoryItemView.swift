//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    let category: Category
    
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            }
        }
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
    CategoryItemView(category: categories[0])
        .padding()
        .background(colorBackground)
}
