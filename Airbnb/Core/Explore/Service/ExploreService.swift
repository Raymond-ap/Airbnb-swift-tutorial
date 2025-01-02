//
//  ExploreService.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview().listings
    }
}
