//
//  ExploreView.swift
//  Airbnb
//
//  Created by Mac on 30/12/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationView {
                DestinationSearchView(closeSearchView: $showDestinationView)
                    
            } else {
                ScrollView {
                    SearchFilterbar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationView.toggle()
                            }
                        }
                    
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
}

#Preview {
    ExploreView()
}
