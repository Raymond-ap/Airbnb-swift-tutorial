//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Mac on 01/01/2025.
//

import SwiftUI

enum DestinationOptions {
    case location, dates, members
}

struct DestinationSearchView: View {
    @Binding var closeSearchView: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationOptions = .location
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        closeSearchView.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                
            }
            .padding()
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "where", description: "Add destination")
                }
                
                
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            
            // Date
            VStack {
                if selectedOption == .dates {
                    HStack {
                        Text("Main view")
                        
                        Spacer()

                    }
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                       
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }

            
            // guest
            VStack {
                if selectedOption == .dates {
                    HStack {
                        Text("Main view")
                        
                        Spacer()
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .members ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .members
                }
            }
            
            Spacer()

        }
        
        
    }
}

#Preview {
    DestinationSearchView(closeSearchView: .constant(true))
}
