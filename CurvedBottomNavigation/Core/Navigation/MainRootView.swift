//
//  MainRootView.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

struct RootView: View {
    @State private var selectedTab: TabSelectedItem = .home
    
    @State private var router = AppRouter()
    
    @State private var container = DependencyContainer()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            // Tab Content
            Group {
                switch selectedTab {
                case .home:
                    AppNavigationView {
                        HomeView(viewModel: container.makeHomeViewModel())
                    }
                    .environment(router)
                    .environment(container)
                    
                case .search:
                    AppNavigationView {
                        MatchesView(viewModel: container.makeMatchesViewModel())
                    }
                    .environment(router)
                    .environment(container)
                    
                case .plus:
                    AppNavigationView {
                        Text("➕ Create Something")
                            .font(.largeTitle)
                    }
                    .environment(router)
                    .environment(container)
                    
                case .notification:
                    AppNavigationView {
                        NotificationView(viewModel: container.makeHomeViewModel())
                    }
                    .environment(router)
                    .environment(container)
                    
                case .profile:
                    AppNavigationView {
                        ProfileView(viewModel: container.makeProfileViewModel())
                    }
                    .environment(router)
                    .environment(container)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            MainTabView(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}
