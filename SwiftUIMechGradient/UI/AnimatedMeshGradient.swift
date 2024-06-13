//
//  AnimatedMeshGradient.swift
//  SwiftUIMechGradient
//
//  Created by piro2 on 6/12/24.
//

import SwiftUI

struct AnimatedMeshGradient: View {
    @Binding var colors: [Color]
    
    // MARK: - Private Properties
    private let points: [SIMD2<Float>] = [
        .init(0, 0), .init(0.5, 0), .init(1, 0),
        .init(0, 0.5), .init(0.5, 0.5), .init(1, 0.5),
        .init(0, 1), .init(0.5, 1), .init(1, 1)
    ]
    
    // MARK: - Body
    var body: some View {
        MeshGradient(width: 3, height: 3, points: points, colors: colors)
    }
}
