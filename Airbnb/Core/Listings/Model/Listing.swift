//
//  Listing.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import Foundation


struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int

    
    var pricePerNight: Int
    
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    
    let title: String
    var rating: Double
    
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
    var imageUrls: [String]
}


enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfChecking, superHost
    
    var imageName: String {
        switch self {
        case .selfChecking:
            return "key.fill" // Example SF Symbol
        case .superHost:
            return "star.fill" // Example SF Symbol
        }
    }
    
    var title: String {
        switch self {
        case .selfChecking:
            return "Self Check-In"
        case .superHost:
            return "Superhost"
        }
    }
    
    var subTitle: String {
        switch self {
        case .selfChecking:
            return "Check yourself in with a smart lock or keypad."
        case .superHost:
            return "This host is experienced and highly rated."
        }
    }
    
    var id: Int { return self.rawValue }
}


enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool, kitchen, wifi, office, balcony, laundry, tv
    
    var title: String {
        switch self {
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "Wi-Fi"
        case .office:
            return "Office"
        case .balcony:
            return "Balcony"
        case .laundry:
            return "Laundry"
        case .tv:
            return "TV"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool:
            return "figure.pool.swim"
        case .kitchen:
            return "kitchen.appliances"
        case .wifi:
            return "wifi"
        case .office:
            return "office.desk"
        case .balcony:
            return "balcony"
        case .laundry:
            return "laundry"
        case .tv:
            return "tv"
        }
    }
    
    var id: Int { return self.rawValue }
}


enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment, villa, house, townHouse
    
    var description: String {
        switch self {
        case .apartment:
            return "A self-contained housing unit that occupies part of a building."
        case .villa:
            return "A luxurious and spacious house, often located in a rural area."
        case .house:
            return "A standalone building designed for residential living."
        case .townHouse:
            return "A multi-floor house that shares walls with adjacent properties."
        }
    }
    
    var id: Int { return self.rawValue }
}
