//
//  WelcomeView.swift
//  AIChatBot
//
//  Created by Marat Guseynov on 09.01.2025.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var imageName: String = Constants.randomImage
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                ImageLoaderView(urlString: imageName)
                    .ignoresSafeArea()
                
                titleSection
                    .padding(.top, 24)
                
                ctaButtons
                    .padding(16)
                
                policyLinks
            }
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 10) {
            Label("AIChatBot", systemImage: "brain")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("YouTube @ProIOS")
                .font(.caption)
                .foregroundStyle(.secondary)
          
        }
    }
    
    private var ctaButtons: some View {
        VStack(spacing: 10) {
            NavigationLink {
                OnboardingIntroView()
            } label: {
                Text("Get started")
                    .callToActionButton()
            }
            
            Text("Already have an account? Sign in!")
                .underline()
                .font(.body)
                .padding(8)
                .tappableBackground()
                .onTapGesture {
                    
                }
        }
    }
    
    private var policyLinks: some View {
        HStack(spacing: 8) {
            Link(destination: URL(string: Constants.termsOfServiceURL)!) {
                Text("Terms of Service")
            }
            Circle()
                .fill(.accent)
                .frame(width: 4, height: 4)
            Link(destination: URL(string: Constants.privacyPolicyURL)!) {
                Text("Privacy Policy")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
