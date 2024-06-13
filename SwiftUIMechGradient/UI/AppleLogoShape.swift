//
//  AppleLogoShape.swift
//  SwiftUIMechGradient
//
//  Created by piro2 on 6/12/24.
//

import SwiftUI

struct AppleLogoShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        
        path.move(to: CGPoint(x: 0.83339*width, y: 0.53061*height))
        path.addCurve(to: CGPoint(x: 0.96531*width, y: 0.34051*height), 
                      control1: CGPoint(x: 0.832*width, y: 0.40417*height),
                      control2: CGPoint(x: 0.95954*width, y: 0.34347*height))
        
        path.addCurve(to: CGPoint(x: 0.74201*width, y: 0.24139*height), 
                      control1: CGPoint(x: 0.89354*width, y: 0.25455*height),
                      control2: CGPoint(x: 0.78185*width, y: 0.24278*height))
        
        path.addCurve(to: CGPoint(x: 0.50839*width, y: 0.28717*height), 
                      control1: CGPoint(x: 0.64701*width, y: 0.23352*height),
                      control2: CGPoint(x: 0.55654*width, y: 0.28717*height))
        
        path.addCurve(to: CGPoint(x: 0.307*width, y: 0.24378*height), 
                      control1: CGPoint(x: 0.46023*width, y: 0.28717*height),
                      control2: CGPoint(x: 0.38577*width, y: 0.24253*height))
        
        path.addCurve(to: CGPoint(x: 0.05447*width, y: 0.36903*height), 
                      control1: CGPoint(x: 0.20331*width, y: 0.24504*height),
                      control2: CGPoint(x: 0.10785*width, y: 0.29309*height))
        
        path.addCurve(to: CGPoint(x: 0.13177*width, y: 0.87241*height), 
                      control1: CGPoint(x: -0.05315*width, y: 0.52186*height),
                      control2: CGPoint(x: 0.027*width, y: 0.74836*height))
        
        path.addCurve(to: CGPoint(x: 0.32447*width, y: 0.99885*height), 
                      control1: CGPoint(x: 0.18308*width, y: 0.93305*height),
                      control2: CGPoint(x: 0.24416*width, y: 1.00137*height))
        
        path.addCurve(to: CGPoint(x: 0.52446*width, y: 0.95792*height), 
                      control1: CGPoint(x: 0.40185*width, y: 0.99633*height),
                      control2: CGPoint(x: 0.43108*width, y: 0.95792*height))
        
        path.addCurve(to: CGPoint(x: 0.72593*width, y: 0.99766*height), 
                      control1: CGPoint(x: 0.61785*width, y: 0.95792*height),
                      control2: CGPoint(x: 0.64416*width, y: 0.99885*height))
        
        path.addCurve(to: CGPoint(x: 0.91277*width, y: 0.87487*height), 
                      control1: CGPoint(x: 0.80908*width, y: 0.99633*height),
                      control2: CGPoint(x: 0.86185*width, y: 0.93569*height))
        
        path.addCurve(to: CGPoint(x: 0.99723*width, y: 0.73274*height), 
                      control1: CGPoint(x: 0.97154*width, y: 0.80447*height),
                      control2: CGPoint(x: 0.99585*width, y: 0.73633*height))
        
        path.addCurve(to: CGPoint(x: 0.83339*width, y: 0.53061*height), 
                      control1: CGPoint(x: 0.99539*width, y: 0.73211*height),
                      control2: CGPoint(x: 0.83508*width, y: 0.6818*height))
        
        path.move(to: CGPoint(x: 0.68344*width, y: 0.15993*height))
        
        path.addCurve(to: CGPoint(x: 0.7469*width, y: 0.00037*height),
                      control1: CGPoint(x: 0.72606*width, y: 0.11768*height),
                      control2: CGPoint(x: 0.75483*width, y: 0.05893*height))
        
        path.addCurve(to: CGPoint(x: 0.56713*width, y: 0.07612*height),
                      control1: CGPoint(x: 0.68552*width, y: 0.00239*height), 
                      control2: CGPoint(x: 0.61121*width, y: 0.03387*height))
        
        path.addCurve(to: CGPoint(x: 0.50244*width, y: 0.23065*height),
                      control1: CGPoint(x: 0.52767*width, y: 0.11346*height),
                      control2: CGPoint(x: 0.49306*width, y: 0.17328*height))
        
        path.addCurve(to: CGPoint(x: 0.68344*width, y: 0.15993*height),
                      control1: CGPoint(x: 0.5709*width, y: 0.23499*height),
                      control2: CGPoint(x: 0.64082*width, y: 0.20212*height))
        return path
    }
}
