//
//  RatingItem.swift
//  Airbnb
//
//  Created by Mac on 31/12/2024.
//

import SwiftUI

struct RatingItem: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .frame(width: 15, height: 15)
                .foregroundStyle(Color(.label))
            
            Text("4.3")
                .font(.subheadline)
                .foregroundColor(Color(.label))
        }    }
}

#Preview {
    RatingItem()
}
