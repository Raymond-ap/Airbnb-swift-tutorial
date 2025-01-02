//
//  ProfileView.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import SwiftUI

struct ProfileView: View {

    var body: some View {
        VStack {
            // Profile
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Login to start planning your next trip")
                        .font(.subheadline)
                        .foregroundStyle(.black)
                }

            
                Button {
                    
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                
                HStack {
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.bold)
                        .underline()
                }
                .font(.footnote)

                
                
                
            }
            
            
            // Lists
            VStack(spacing: 24) {
                ProfileRowView(imageName: "gear", title: "Settings")
                
                ProfileRowView(imageName: "gear", title: "Accessibility")
                
                ProfileRowView(imageName: "questionmark.circle", title: "Visit help center")
            }
            .padding(.vertical)
            
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
