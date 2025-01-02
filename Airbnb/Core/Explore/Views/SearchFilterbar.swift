//
//  SearchFilterbar.swift
//  Airbnb
//
//  Created by Mac on 31/12/2024.
//

import SwiftUI

struct SearchFilterbar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading) {
                Text("Where to?")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.label))
                    .font(.footnote)
                
                Text("Any - where - guest")
                    .foregroundColor(Color(.gray))
                    .font(.caption2)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(Color(.label))
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundColor(Color(.gray))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchFilterbar()
}
