//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Pavel Karunnyj on 09.06.2023.
//

import SwiftUI

enum CurrentLight {
    case red
    case yellow
    case green
}

enum Condition: Double {
    case lightIsOn = 1
    case lightIsOff = 0.3
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var buttonTitle = "START"
    
    @State private var redOpacity = Condition.lightIsOff
    @State private var yellowOpacity = Condition.lightIsOff
    @State private var greenOpacity = Condition.lightIsOff
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                SignalView(
                    color: .red,
                    opacity: redOpacity.rawValue
                )
                .padding()
                SignalView(
                    color: .yellow,
                    opacity: yellowOpacity.rawValue
                )
                .padding()
                SignalView(
                    color: .green,
                    opacity: greenOpacity.rawValue
                )
                .padding()
                Spacer()
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    switch currentLight {
                    case .red :
                        greenOpacity = Condition.lightIsOff
                        redOpacity = Condition.lightIsOn
                        currentLight = CurrentLight.yellow
                    case .yellow :
                        redOpacity = Condition.lightIsOff
                        yellowOpacity = Condition.lightIsOn
                        currentLight = CurrentLight.green
                    case .green :
                        yellowOpacity = Condition.lightIsOff
                        greenOpacity = Condition.lightIsOn
                        currentLight = CurrentLight.red
                    }
                }
                .padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
