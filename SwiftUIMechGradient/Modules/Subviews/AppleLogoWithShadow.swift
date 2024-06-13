//
//  AppleLogoWithShadow.swift
//  SwiftUIMechGradient
//
//  Created by piro2 on 6/12/24.
//

import SwiftUI

struct AppleLogoWithShadow: View {
    
    @Binding var averageColor: Color
    
    // MARK: - Body
    var body: some View {
        AppleLogoShape()
            .foregroundColor(.white)
            .overlay {
                AppleLogoShape()
                    .stroke(.white, lineWidth: 3)
                    .shadow(color: averageColor,
                            radius: 4, x: 5, y: 5)
                    .clipShape( AppleLogoShape() )
            }
    }
}
