//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by Mac on 31/12/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
     var images: [String]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(images: ["listing-2"])
}
