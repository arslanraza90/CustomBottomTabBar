//
//  SmoothBumpTopBar.swift
//  CurvedBottomNavigation
//
//  Created by Arslan Raza on 16/08/2025.
//

import SwiftUI

struct SmoothBumpTopBar: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let bumpWidth: CGFloat = rect.width * 0.5
        let bumpHeight: CGFloat = rect.height * 0.2
        let easingLength: CGFloat = bumpWidth * 0.1
        let controlOffset: CGFloat = bumpWidth * 0.4
        
        let startX = rect.midX - bumpWidth / 2
        let endX = rect.midX + bumpWidth / 2
        let peakX = rect.midX
        path.move(to: CGPoint(x: 0, y: 0))
        path.addCurve(
            to: CGPoint(x: startX, y: 0),
            control1: CGPoint(x: startX - easingLength * 0.8, y: 0),
            control2: CGPoint(x: startX - easingLength * 0.2, y: 0)
        )
        
        path.addCurve(
            to: CGPoint(x: peakX, y: -bumpHeight),
            control1: CGPoint(x: startX + controlOffset * 0.4, y: 0),
            control2: CGPoint(x: peakX - controlOffset * 0.4, y: -bumpHeight)
        )
        
        path.addCurve(
            to: CGPoint(x: endX, y: 0),
            control1: CGPoint(x: peakX + controlOffset * 0.4, y: -bumpHeight),
            control2: CGPoint(x: endX - controlOffset * 0.4, y: 0)
        )
        
        path.addCurve(
            to: CGPoint(x: rect.width, y: 0),
            control1: CGPoint(x: endX + easingLength * 0.2, y: 0),
            control2: CGPoint(x: endX + easingLength * 0.8, y: 0)
        )
        
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.closeSubpath()
        
        return path
    }
}
