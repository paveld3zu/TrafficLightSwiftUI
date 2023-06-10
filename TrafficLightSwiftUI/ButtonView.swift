//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Pavel Karunnyj on 09.06.2023.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let condition: () -> Void
    
    var body: some View {
        Button(action: { condition() }) {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width: 120, height: 60)
                .background(Color.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 6))
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "button") {
        }
    }
}
