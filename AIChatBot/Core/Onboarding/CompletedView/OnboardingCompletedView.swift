//
//  OnboardingCompletedView.swift
//  AIChatBot
//
//  Created by Marat Guseynov on 10.01.2025.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var root
    @State private var iscompletingProfileSetup: Bool = false
    var selectedColor: Color = .orange
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup complete!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(selectedColor)
            
            Text("We've setup your profile and you're ready to start chatting.")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
         
        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom, content: {
            ctaButton
        })
        .padding(24)
        .toolbar(.hidden, for: .navigationBar)
    }
    
    private var ctaButton: some View {
        Button {
            // finish onboarding and enter app!
            onFinishButtonPressed()
        } label: {
            ZStack {
                if iscompletingProfileSetup {
                    ProgressView()
                        .tint(.white)
                } else {
                    Text("Finish")
                }
            }
                .callToActionButton()
        }
        .disabled(iscompletingProfileSetup)
    }
    
    func onFinishButtonPressed() {
        iscompletingProfileSetup = true
        Task {
            try await Task.sleep(for: .seconds(3))
            iscompletingProfileSetup = false
           // try await saveUserProfile(color: selectedColor)
            // other logic to complete onboarding
            root.updateViewState(showTabBarView: true)
        }
    }
}

#Preview {
    OnboardingCompletedView(selectedColor: .mint)
        .environment(AppState())
}
