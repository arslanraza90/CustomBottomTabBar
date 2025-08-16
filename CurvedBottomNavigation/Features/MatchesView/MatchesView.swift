//
//  MatchesView.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

struct MatchesView: View {
    @Environment(AppRouter.self) private var router
    @ObservedObject var viewModel: MatchesViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("⚽ Matches").font(.largeTitle)
            
            Button("Back to Home") {
                router.popToRoot()
            }
        }
        .navigationTitle("Matches")
    }
}
