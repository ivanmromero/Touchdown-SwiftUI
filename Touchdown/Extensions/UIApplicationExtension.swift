//
//  UIApplicationExtension.swift
//  Touchdown
//
//  Created by Ivan Romero on 05/02/2024.
//

import Foundation
import SwiftUI

extension UIApplication {
    var safeAreaInsetsTop: CGFloat {
        self.connectedScenes
            .compactMap { ($0 as? UIWindowScene)?.keyWindow }
            .last?
            .safeAreaInsets
            .top ?? 0
    }
}
