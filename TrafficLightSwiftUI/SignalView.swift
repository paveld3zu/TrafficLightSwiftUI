//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Pavel Karunnyj on 09.06.2023.
//

import SwiftUI

struct SignalView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        SignalView(color: .red, opacity: 1)
    }
}
