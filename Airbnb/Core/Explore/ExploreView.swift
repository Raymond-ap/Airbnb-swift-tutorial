//
//  ExploreView.swift
//  Airbnb
//
//  Created by Mac on 30/12/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchFilterbar()
            
                LazyVStack(spacing: 35) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarHidden(true)
            }
        }
    }
}

#Preview {
    ExploreView()
}
