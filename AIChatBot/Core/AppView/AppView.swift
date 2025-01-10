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
    
    @State var appState: AppState = AppState()
    
    var body: some View {
        AppViewBuilder(
            showTabBar: appState.showTabBar,
            tabbarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
        .environment(appState)
    }
}

#Preview("AppView - Tabbar") {
    AppView(appState: AppState(showTabBar: true))
}
#Preview("Appview - Onboarding") {
    AppView(appState: AppState(showTabBar: false))
}
