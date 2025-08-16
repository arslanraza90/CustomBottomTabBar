//
//  Router.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

@Observable
final class AppRouter {
    var path = NavigationPath()
    
    func push(_ route: AppRoute) {
        path.append(route)
        print(path)
    }
    
    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}
