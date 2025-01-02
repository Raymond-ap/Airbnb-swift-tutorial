//
//  DestinationViewModifier.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import SwiftUI

struct DestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}
