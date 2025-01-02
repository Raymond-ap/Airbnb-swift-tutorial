//
//  ProfileRowView.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import SwiftUI

struct ProfileRowView: View {
    var imageName: String
    var title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()

                Image(systemName: "chevron.right")
            }
            
            Divider()
            
        }
    }
}

#Preview {
    ProfileRowView(imageName: "gear", title: "Settings")
}
