//
//  MatchDetailViewModel.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import Foundation

final class MatchDetailViewModel: ObservableObject {
    public let matchID: String
    private let service: MatchService
    @Published var details: String = ""
    
    init(matchID: String, service: MatchService) {
        self.matchID = matchID
        self.service = service
        loadDetails()
    }
    
    func loadDetails() {
        details = "Details for \(matchID)"
    }
}

final class MatchesViewModel: ObservableObject {
    private let service: MatchService
    @Published var matches: [String] = []
    
    init(service: MatchService) {
        self.service = service
        loadMatches()
    }
    
    func loadMatches() {
        matches = service.fetchMatches()
    }
}
