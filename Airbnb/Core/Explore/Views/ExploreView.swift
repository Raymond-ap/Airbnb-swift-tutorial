//
//  ExploreView.swift
//  Airbnb
//
//  Created by Mac on 30/12/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            
            if showDestinationView {
                DestinationSearchView(closeSearchView: $showDestinationView)
                    
            } else {
                VStack {
                    SearchFilterbar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationView.toggle()
                            }
                        }

                    
                    ScrollView {
                        LazyVStack(spacing: 35) {
                            ForEach(viewModel.listings) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView(listing: listing)
                                }
                            }
                        }
                        .padding()
                    }
                    .navigationDestination(for: Listing.self) { listing in
                        ListingDetailView(listing: listing)
                            .navigationBarHidden(true)
                    }
                }

            }
        }
    }
}

#Preview {
    ExploreView()
}
