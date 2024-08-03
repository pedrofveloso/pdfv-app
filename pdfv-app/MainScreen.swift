//
//  MainScreen.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 27/07/24.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            AboutMeScreen()
                .tabItem {
                    Label("about-me-title", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

#Preview {
    MainScreen()
}
