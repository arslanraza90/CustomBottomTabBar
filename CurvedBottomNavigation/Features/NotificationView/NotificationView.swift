//
//  NotificationView.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

struct NotificationView: View {
    @Environment(AppRouter.self) private var router
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("🏠 Home").font(.largeTitle)
            
            Button("Go back") {
                router.pop()
            }
        }
        .navigationTitle("Notification Detail")
    }
}
