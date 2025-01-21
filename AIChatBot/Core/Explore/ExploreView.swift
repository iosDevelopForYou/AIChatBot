//
//  ExploreView.swift
//  AIChatBot
//
//  Created by Marat Guseynov on 09.01.2025.
//

import SwiftUI

struct ExploreView: View {
    
    let avatar = AvatarModel.mock
    
    var body: some View {
        NavigationStack {
            HeroCellView(
                title: avatar.name,
                subTitle: avatar.characterDescription,
                imageName: avatar.profileImageName
            )
            .frame(height: 200)
                .navigationTitle("Explore")
        }
    }
}

#Preview {
    ExploreView()
}
