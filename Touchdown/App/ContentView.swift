//
//  ContentView.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack {
                VStack {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, geometry.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    Spacer()
                    FooterView()
                        .padding(.horizontal)
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            }
            .ignoresSafeArea(.all, edges: .top)
        })
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
