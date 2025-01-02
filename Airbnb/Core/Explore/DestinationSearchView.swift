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
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numberOfGuests = 2
    
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
                
                if !destination.isEmpty {
                    Button {
                        destination = ""
                    } label: {
                        Text("Clear")
                            .foregroundStyle(.black)
                        
                    }
                }
                
                
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
            .modifier(DestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            
            // Date
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom)
                    
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    

                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                       
                }
            }
            .modifier(DestinationViewModifier())
            .frame(height: selectedOption == .dates ? 160 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }

            
            // guest
            VStack(alignment: .leading) {
                if selectedOption == .members {
                    Text("Who's coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom)
                    
                    Stepper {
                        Text("\(numberOfGuests) Adults")
                    } onIncrement: {
                        numberOfGuests += 1
                    } onDecrement: {
                        if numberOfGuests > 0 {
                            numberOfGuests -= 1
                        }
                    }

                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(DestinationViewModifier())
            .frame(height: selectedOption == .members ? 170 : 64)
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
