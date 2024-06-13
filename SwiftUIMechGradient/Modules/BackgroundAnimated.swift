//
//  ContentView.swift
//  SwiftUIMechGradient
//
//  Created by piro2 on 6/11/24.
//

import SwiftUI

struct BackgroundAnimated: View {
    @State private var viewModel = ViewModel()
    
    // MARK: - Body
    var body: some View {
        ZStack {
            AnimatedMeshGradient(colors: $viewModel.colors)
            AppleLogoWithShadow(averageColor: $viewModel.averageColor)
                .frame(width: Const.width, height: Const.height )
        }
        .ignoresSafeArea()
        .onChange(of: viewModel.colors) {
            viewModel.calculateAverageColor()
        }
        .onReceive(viewModel.timer) { _ in
            withAnimation(.linear(duration: Const.animationDuration)) {
                self.viewModel.shiftColors()
            }
        }
    }
}

// MARK: - Constant
fileprivate struct Const {
    static let width: CGFloat = 227.5
    static var height: CGFloat {
        width * 1.23
    }
    static let animationDuration: CGFloat = 0.8
}

// MARK: - Preview
#Preview() {
        BackgroundAnimated()
}
