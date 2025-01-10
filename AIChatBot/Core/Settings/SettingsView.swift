//
//  SettingsView.swift
//  AIChatBot
//
//  Created by Marat Guseynov on 10.01.2025.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(AppState.self) private var appState
    
    var body: some View {
        NavigationStack {
            List {
                Button {
                    onsignOutPressed()
                } label: {
                    Text("Sign Out")
                }

            }
            .navigationTitle(Text("Settings"))
        }
    }
    
    func onsignOutPressed() {
        // do some logic to sign user out of app!
        dismiss()
        
        Task {
            try? await Task.sleep(for: .seconds(1))
            appState.updateViewState(showTabBarView: false)
        }
    }
}

#Preview {
    SettingsView()
        .environment(AppState())
}
