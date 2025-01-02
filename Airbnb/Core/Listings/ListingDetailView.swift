//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Mac on 31/12/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var images = [
        "listing-5",
        "listing-6",
        "listing-7",
        "listing-8",
    ]
    
    var offers = [
        "wifi",
        "alarm",
        "building.columns",
        "car",
        "tv"
    ]
    
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(images: images)
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
                
            VStack(alignment: .leading) {
                Text("New Yolk")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.label))
                
                HStack {
                    RatingItem()
                    
                    Text("-")
                    
                    Text("23 ratings")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.caption)
                
                Text("Miami Florida")
                    .font(.caption)
            }
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Amazing Villa hosted by John Doe")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("4 guest -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("4 bath")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("listing-1")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(.ellipse)
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(1...2, id: \.self) { specs in
                    HStack {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("self checking")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.label))
                            
                            Text("Lorem ipsume isdbf fad asad fafad faf sdsd dsds dsdsd dsd ds sds dsd sds dsd sdfa")
                                .font(.caption)
                                .foregroundColor(Color(.gray))
                        }
                    }
                }
            }
            
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Where will you sleep?")
                    .font(.headline)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1..<5) { bedroom in
                            VStack(spacing: 10) {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                                    .font(.footnote)
                            }
                            .frame(width: 124, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("What this place offers")
                    .font(.headline)
                
                
                ForEach(offers, id: \.self) { offer in
                    HStack {
                        Image(systemName: offer)
                            .frame(width: 32)
                        
                        Text("What this place offers")
                            .font(.footnote)
                        
                        Spacer()
                        
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
               
            }
            .padding()
            .padding(.bottom, 80)
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("$34.33")
                            .fontWeight(.bold)
                            .foregroundColor(Color(.label))

                        Text("night")
                            .foregroundColor(Color(.gray))
                            .font(.footnote)
                        
                        Text("Oct 12 - 16")
                            .foregroundColor(Color(.label))
                            .font(.caption)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
           
    }
}

#Preview {
    ListingDetailView()
}
