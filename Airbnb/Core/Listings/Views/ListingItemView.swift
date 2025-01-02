//
//  ListingView.swift
//  Airbnb
//
//  Created by Mac on 30/12/2024.
//

import SwiftUI

struct ListingItemView: View {
    var listing: Listing
    
    
    var body: some View {
        VStack(spacing: 9) {
            ZStack {
                ListingImageCarouselView(images: listing.imageUrls)
                    .frame(height: 320)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            
            HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(listing.title)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color(.label))
                        
                        Text(listing.address)
                            .foregroundColor(Color(.gray))
                        
                        Text(listing.city)
                            .foregroundColor(Color(.gray))
                        
                        HStack {
                            Text("$\(listing.pricePerNight)")
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
    ListingItemView(listing: DeveloperPreview().defaultListing)
}
