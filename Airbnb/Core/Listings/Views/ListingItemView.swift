//
//  ListingView.swift
//  Airbnb
//
//  Created by Mac on 30/12/2024.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
        "listing-5",
        "listing-6",
        "listing-7",
        "listing-8",
    ]
    
    var body: some View {
        VStack(spacing: 9) {
            ZStack {
                ListingImageCarouselView(images: images)
                    .frame(height: 320)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            
            HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Listing title")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color(.label))
                        
                        Text("Listing title")
                            .foregroundColor(Color(.gray))
                        
                        Text("Listing title")
                            .foregroundColor(Color(.gray))
                        
                        HStack {
                            Text("$34.33")
                                .fontWeight(.bold)
                                .foregroundColor(Color(.label))
                            
                            
                            Text("night")
                                .foregroundColor(Color(.label))
                        }
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                RatingItem()
            }
            
        }
    }
}

#Preview {
    ListingItemView()
}
