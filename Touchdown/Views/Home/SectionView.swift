//
//  SectionView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    let rotateClockwise: Bool
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray.clipShape(.rect(cornerRadius: 12)))
        .frame(width: 85)
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 120, height: 240)) {
    SectionView(rotateClockwise: false)
        .padding()
        .background(colorBackground)
}
