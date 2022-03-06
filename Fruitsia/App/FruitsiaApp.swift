//
//  FruitsiaApp.swift
//  Fruitsia
//
//  Created by Ameer Hamza on 05/03/2022.
//

import SwiftUI

@main
struct FruitsiaApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
            OnboardingView()
            }
            else {
            ContentView()
            }
        }
    }
}
