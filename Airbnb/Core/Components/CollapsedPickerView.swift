//
//  CollapsedPickerView.swift
//  Airbnb
//
//  Created by Mac on 01/01/2025.
//

import SwiftUI

struct CollapsedPickerView: View {
    var title: String
    var description: String
    
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//        .padding()
//        .shadow(radius: 10)
    }
}

#Preview {
    CollapsedPickerView(title: "When", description: "Add Date")
}
