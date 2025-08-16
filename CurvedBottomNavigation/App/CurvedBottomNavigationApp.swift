//
//  CurvedBottomNavigationApp.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 15/08/2025.
//

import SwiftUI

@main
struct CurvedBottomNavigationApp: App {
    @State private var container = DependencyContainer()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(container)
        }
    }
}
