//
//  ContentView.swift
//  SwiftUIMechGradient
//
//  Created by piro2 on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var timer: Timer?
    @State private var step = 0
    
    @State var colors: [Color] = [.red, .purple, .indigo, .orange, .pink, .blue, .yellow, .green, .mint]
    @State var averageColors: [Color] = [.red, .blue, .green]
    
    // MARK: - Body
    var body: some View {
        ZStack {
            AnimatedMeshGradient(colors: $colors)
            VStack {
                AppleLogoWithShadow(averageColor: <#T##Color#>)
                    .foregroundColor(.white)
                    .overlay {
                        AppleLogoShape()
                            .stroke(Color(red: 236/255, green: 234/255, blue: 235/255), lineWidth: 3)
//                            .opacity(0.8)
                            .shadow(color: averageColor(averageColors),
                                    radius: 4, x: 5, y: 5)
                            .clipShape(
                                AppleLogoShape()
                            )
                    }
                    .frame(width: 227.5, height: 279.5)
            }
        }
        .onAppear {
            timer = Timer.scheduledTimer(withTimeInterval: 0.6, repeats: true, block: { _ in
                withAnimation(.linear(duration: 0.6)) {
                    shiftColors()
//                    shiftColorsTwo()
                }
              
            })
        }
        .ignoresSafeArea()
    }
    
    func shiftColors() {
        let centerIndex = colors.count / 2

        let leftS = Array(colors[0..<centerIndex - 1])
        let rightS = Array(colors[(centerIndex + 2)..<colors.count])
        
        let leftMiddleS = colors[centerIndex - 1]
        let rightMiddleS = colors[centerIndex + 1]
        
        let newLeftS = [leftMiddleS] + leftS.dropLast()
        let newRightS = rightS.dropFirst() + [rightMiddleS]
        
        colors = newLeftS + [rightS.first!] + [colors[centerIndex]] + [leftS.last!] + newRightS
        averageColors = [colors[0], colors[4]]
    }
    
//    func shiftColorsTwo() {
//        let centerIndex = points.count / 2
//
//        let leftS = Array(points[0..<centerIndex - 1])
//        let rightS = Array(points[(centerIndex + 2)..<points.count])
//        
//        let leftMiddleS = points[centerIndex - 1]
//        let rightMiddleS = points[centerIndex + 1]
//
//        let newLeftS = [leftMiddleS] + leftS.dropLast()
//        let newRightS = rightS.dropFirst() + [rightMiddleS]
//        
//        points = newLeftS + [rightS.first!] + [points[centerIndex]] + [leftS.last!] + newRightS
//    }
//    
//    func shiftColorsThree() {
//        let centerIndex = points.count / 2
//
//        var leftS = Array(points[0..<centerIndex - 1])
//        var rightS = Array(points[(centerIndex + 2)..<points.count])
//        
//        var leftMiddleS = points[centerIndex - 1]
//        var rightMiddleS = points[centerIndex + 1]
//        
//        
////        leftS.insert(leftMiddleS, at: 0)
//        
//        let newLeftS = [leftMiddleS] + leftS.dropLast()
//        let newRightS = rightS.dropFirst() + [rightMiddleS]
//        
//        points = newLeftS + [rightS.first!] + [points[centerIndex]] + [leftS.last!] + newRightS
//    }
//    
//        .init(0, 0), .init(0.5, 0), .init(1, 0),
//        .init(0, 0.5), .init(0.5, 0.5), .init(1, 0.5),
//        .init(0, 1), .init(0.5, 1), .init(1, 1)
    
    
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
        return Color(
            red: red / count,
            green: green / count,
            blue: blue / count,
            opacity: alpha / count
        )
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
