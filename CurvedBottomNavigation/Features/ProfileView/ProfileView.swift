//
//  ProfileView.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

struct ProfileView: View {
    @Environment(AppRouter.self) private var router
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("👤 Profile").font(.largeTitle)
            
            Button("Back") {
                router.pop()
            }
            Button("Back to Home") { router.pop() }
        }
        .navigationTitle("Profile")
    }
}
