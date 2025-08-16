//
//  HomeView.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(AppRouter.self) private var router
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("🏠 Home").font(.largeTitle)
            
            Button("Go to notification") {
                router.push(.notification)
            }
        }
        .navigationTitle("Home")
    }
}

