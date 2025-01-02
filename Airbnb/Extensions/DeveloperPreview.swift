//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import Foundation

class DeveloperPreview {
    var defaultListing: Listing = Listing(
        id: UUID().uuidString,
        ownerUid: "user123",
        ownerName: "John Doe",
        ownerImageUrl: "listing-3",
        numberOfBedrooms: 3,
        numberOfBathrooms: 2,
        numberOfGuests: 6,
        numberOfBeds: 3,
        pricePerNight: 120,
        latitude: 40.7128,
        longitude: -74.0060,
        address: "123 Main St",
        city: "New York",
        state: "NY",
        title: "Modern Apartment in NYC",
        rating: 4.5,
        features: [.selfChecking, .superHost],
        amenities: [.pool, .wifi, .kitchen],
        type: .apartment,
        imageUrls: [
            "listing-5",
            "listing-6",
            "listing-7",
            "listing-8",
        ]
    )
    
    
    
    var listings: [Listing] {
        return [
            .init(
                id: UUID().uuidString,
                ownerUid: "user123",
                ownerName: "John Doe",
                ownerImageUrl: "listing-3",
                numberOfBedrooms: 3,
                numberOfBathrooms: 2,
                numberOfGuests: 6,
                numberOfBeds: 3,
                pricePerNight: 120,
                latitude: 40.7128,
                longitude: -74.0060,
                address: "123 Main St",
                city: "New York",
                state: "NY",
                title: "Modern Apartment in NYC",
                rating: 4.5,
                features: [.selfChecking, .superHost],
                amenities: [.pool, .wifi, .kitchen],
                type: .apartment,
                imageUrls: [
                    "listing-5",
                    "listing-6",
                    "listing-7",
                    "listing-8",
                ]
            ),
            .init(
                id: UUID().uuidString,
                ownerUid: "user456",
                ownerName: "Jane Smith",
                ownerImageUrl: "listing-5",
                numberOfBedrooms: 5,
                numberOfBathrooms: 4,
                numberOfGuests: 10,
                numberOfBeds: 5,
                pricePerNight: 350,
                latitude: 34.0522,
                longitude: -118.2437,
                address: "456 Sunset Blvd",
                city: "Los Angeles",
                state: "CA",
                title: "Luxury Villa with Pool",
                rating: 4.9,
                features: [.superHost],
                amenities: [.pool, .wifi, .balcony],
                type: .villa,
                imageUrls: [
                    "listing-1",
                    "listing-2",
                    "listing-6",
                    "listing-4",
                ]
            ),
            .init(
                id: UUID().uuidString,
                ownerUid: "user789",
                ownerName: "Alice Johnson",
                ownerImageUrl: "listing-3",
                numberOfBedrooms: 2,
                numberOfBathrooms: 1,
                numberOfGuests: 4,
                numberOfBeds: 2,
                pricePerNight: 85,
                latitude: 51.5074,
                longitude: -0.1278,
                address: "789 Baker St",
                city: "London",
                state: "England",
                title: "Cozy Townhouse in Central London",
                rating: 4.2,
                features: [.selfChecking],
                amenities: [.wifi, .kitchen, .laundry],
                type: .townHouse,
                imageUrls: [
                    "listing-3",
                    "listing-5",
                    "listing-1",
                    "listing-7",
                ]
            ),
            .init(
                id: UUID().uuidString,
                ownerUid: "user321",
                ownerName: "Mike Brown",
                ownerImageUrl: "listing-4",
                numberOfBedrooms: 4,
                numberOfBathrooms: 3,
                numberOfGuests: 8,
                numberOfBeds: 4,
                pricePerNight: 200,
                latitude: 48.8566,
                longitude: 2.3522,
                address: "101 Champs-Élysées",
                city: "Paris",
                state: "Île-de-France",
                title: "Charming House Near Eiffel Tower",
                rating: 4.7,
                features: [.superHost],
                amenities: [.kitchen, .tv, .laundry],
                type: .house,
                imageUrls: [
                    "listing-8",
                    "listing-2",
                    "listing-3",
                    "listing-1",
                ]
            )
        ]
    }
}
