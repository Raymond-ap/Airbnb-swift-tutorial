//
//  WishlistView.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Login to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've login")
                        .font(.footnote)
                }
                
                
                Button {
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                Spacer()

            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
