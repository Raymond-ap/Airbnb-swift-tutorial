//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Mac on 02/01/2025.
//

import Foundation


class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings () async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("Failed to fetch listings \(error.localizedDescription)")
        }
    }
}
