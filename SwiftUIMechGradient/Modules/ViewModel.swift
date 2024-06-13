//
//  ViewModel.swift
//  SwiftUIMechGradient
//
//  Created by piro2 on 6/12/24.
//

import Foundation
import Combine
import Observation
import SwiftUI

@Observable final class ViewModel {
    let timer = Timer.publish(every: 0.7, on: .main, in: .common).autoconnect()
    var colors: [Color] = [.red, .purple, .indigo, .orange, .pink, .blue, .yellow, .green, .mint]
    var averageColor: Color = .red
}

// MARK: - Public
extension ViewModel {
    func calculateAverageColor() {
        averageColor = averageColor([colors[0], colors[1], colors[3], colors[4]])
    }
    
    func shiftColors() {
        let centerIndex = colors.count / 2
        
        let leftSide = Array(colors[0..<centerIndex - 1])
        let leftMiddleSide = colors[centerIndex - 1]
        
        let rightSide = Array(colors[(centerIndex + 2)..<colors.count])
        let rightMiddleSide = colors[centerIndex + 1]
      
        
        
        let newLeftSide = [leftMiddleSide] + leftSide.dropLast()
        let newLeftMiddleSide =  [rightSide.first!]
        let newRightSide = rightSide.dropFirst() + [rightMiddleSide]
        let newRightMiddleSide = [leftSide.last!]
        
        colors = newLeftSide + newLeftMiddleSide + [colors[centerIndex]] + newRightMiddleSide + newRightSide
    }
    
    func averageColor(_ colors: [Color]) -> Color {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        for color in colors {
            var r: CGFloat = 0
            var g: CGFloat = 0
            var b: CGFloat = 0
            var a: CGFloat = 0
            
            UIColor(color).getRed(&r, green: &g, blue: &b, alpha: &a)
            
            red += r
            green += g
            blue += b
            alpha += a
        }
        
        let count = CGFloat(colors.count)
        return Color(red: red / count,
                     green: green / count,
                     blue: blue / count,
                     opacity: alpha / count
        )
    }
}
