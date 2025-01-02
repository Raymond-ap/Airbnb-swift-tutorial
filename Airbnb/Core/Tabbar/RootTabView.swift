//
//  RootTabView.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import SwiftUI

enum TabOption {
    case home, wishlist, profile
}

struct RootTabView: View {
    @State private var selectedTab: TabOption = .home
    
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            
            WishlistView()
                .tabItem {
                    Label("Wishlist", systemImage: "heart")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    RootTabView()
}
