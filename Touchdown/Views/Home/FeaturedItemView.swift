//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTIES
    let player: Player
    
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 12))
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
