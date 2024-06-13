//
//  LogoAnimated.swift
//  SwiftUIMechGradient
//
//  Created by piro2 on 6/12/24.
//

import SwiftUI

struct LogoAnimated: View {
    @State private var viewModel = ViewModel()
    
    // MARK: - Body
    var body: some View {
        ZStack {
            AnimatedMeshGradient(colors: $viewModel.colors)
        }
        .frame(width: 227.5, height: 279.5)
        .ignoresSafeArea()
        .mask {
            AppleLogoWithShadow(averageColor: $viewModel.averageColor)
        }
        .onChange(of: viewModel.colors) {
            viewModel.calculateAverageColor()
        }
        .onReceive(viewModel.timer) { _ in
            withAnimation(.linear(duration: 0.6)) {
                self.viewModel.shiftColors()
            }
        }
    }
}

// MARK: - Preview
#Preview {
    LogoAnimated()
}
