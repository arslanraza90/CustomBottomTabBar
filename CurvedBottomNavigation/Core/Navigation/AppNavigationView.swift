//
//  AppNavigationView.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

enum AppRoute: Hashable {
    case notification
}

struct AppNavigationView<Content: View>: View {
    @Environment(AppRouter.self) private var router
    @Environment(DependencyContainer.self) private var container
    let content: () -> Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    var body: some View {
        @Bindable var router = router
        
        NavigationStack(path: $router.path) {
            content()
                .navigationDestination(for: AppRoute.self) { route in
                    switch route {
                    case .notification:
                        NotificationView(viewModel: container.makeHomeViewModel())
                    }
                }
        }
    }
}
