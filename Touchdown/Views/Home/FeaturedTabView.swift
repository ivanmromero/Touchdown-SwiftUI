//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - PROPERTIES
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - PREVIEW
#Preview {
    FeaturedTabView()
        .background(.gray)
}
