//
//  MainTabView.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

struct MainTabView: View {
    @Binding var selectedTab: TabSelectedItem
    
    var body: some View {
        HStack(spacing: 10) {
            // Home
            Button {
                selectedTab = .home
            } label: {
                ZStack {
                    TabItem(image: "house.fill", text: "Home", isActive: selectedTab == .home)
                }
            }
            
            // Search
            Button {
                selectedTab = .search
            } label: {
                TabItem(image: "magnifyingglass", text: "Search", isActive: selectedTab == .search)
            }
            
            Button {
                selectedTab = .plus
            } label: {
                VStack {
                    ZStack {
                        VStack(spacing: 3) {
                            RoundedRectangle(cornerRadius: 32.5)
                                .frame(width: 65, height: 65)
                                .foregroundColor(.pink)
                        }
                        VStack(spacing: 3) {
                            Image(systemName: "lightbulb.min")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    Spacer()
                }
            }
            
            Button {
                selectedTab = .notification
            } label: {
                TabItem(image: "bell", text: "Notification", isActive: selectedTab == .notification)
            }
            
            Button {
                selectedTab = .profile
            } label: {
                TabItem(image: "person", text: "Profile", isActive: selectedTab == .profile)
            }
        }.offset(y: -10)
            .frame(height: 30)
            .background(
                SmoothBumpTopBar()
                    .frame(height: 100)
            )
            .shadow(color: Color.tabBarBackground.opacity(0.5), radius: 5)
    }
}


enum TabSelectedItem: Int, CaseIterable, Hashable {
    case home = 0
    case search = 1
    case plus = 2
    case notification = 3
    case profile = 4
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .search: return "Search"
        case .plus: return "Create"
        case .notification: return "Notification"
        case .profile: return "Profile"
        }
    }
}
