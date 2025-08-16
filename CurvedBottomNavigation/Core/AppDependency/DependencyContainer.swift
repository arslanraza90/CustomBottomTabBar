//
//  DependencyContainer.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

@Observable
final class DependencyContainer {
    
    private let matchService = MatchService()
    private let userService = UserService()
    
    func makeHomeViewModel() -> HomeViewModel {
        HomeViewModel()
    }
    
    func makeMatchesViewModel() -> MatchesViewModel {
        MatchesViewModel(service: matchService)
    }
    
    func makeMatchDetailViewModel(matchID: String) -> MatchDetailViewModel {
        MatchDetailViewModel(matchID: matchID, service: matchService)
    }
    
    func makeProfileViewModel() -> ProfileViewModel {
        ProfileViewModel(userService: userService)
    }
}
