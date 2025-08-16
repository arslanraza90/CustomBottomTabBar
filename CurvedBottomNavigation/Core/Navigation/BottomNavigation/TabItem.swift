//
//  TabItem.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

struct TabItem: View {
    var image: String
    var text: String
    var isActive: Bool
    
    var body: some View {
        HStack(spacing: 10) {
            GeometryReader { geo in
                VStack(spacing: UIDevice.current.userInterfaceIdiom == .pad ? 6 : 3) {
                    Rectangle()
                        .frame(height: 0)
                    
                    Image(systemName: image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? 30 : 24,
                               height: UIDevice.current.userInterfaceIdiom == .pad ? 30 : 24)
                        .foregroundColor(isActive ? .white : .gray)
                    
                    Text(isActive ? text : "")
                        .font(.caption)
                        .foregroundColor(isActive ? .white : .gray)
                }
            }
        }
    }
}
