//
//  ProfileViewModel.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import Foundation

final class ProfileViewModel: ObservableObject {
    private let userService: UserService
    @Published var username: String = ""
    
    init(userService: UserService) {
        self.userService = userService
        loadUser()
    }
    
    func loadUser() {
        username = userService.currentUser()
    }
}
