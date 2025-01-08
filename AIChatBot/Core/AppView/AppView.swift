//
//  AppView.swift
//  AIChatBot
//
//  Created by Marat Guseynov on 08.01.2025.
//
// tabBar - signed in (true)
// onboarding - signed out (false)

import SwiftUI

struct AppView: View {
    
    @AppStorage("showTabbarView") var showTabBar: Bool = false
    
    var body: some View {
        AppViewBuilder(
            showTabBar: showTabBar,
            tabbarView: {
                ZStack {
                    Color.red.ignoresSafeArea()
                    Text("TabBar")
                }
            },
            onboardingView: {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("Onboarding")
                }
            }
        )
    }
}

#Preview("AppView - Tabbar") {
    AppView(showTabBar: true)
}
#Preview("Appview - Onboarding") {
    AppView(showTabBar: false)
}
