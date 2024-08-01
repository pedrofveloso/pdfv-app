//
//  AboutMeScreen.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 27/07/24.
//

import SwiftUI

struct AboutMeScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("about-me")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(description)

            Text("about-me-hobbies")
            
            Text("about-me-chess-invite")
        }
        .padding()
    }
}

private extension AboutMeScreen {
    var description: String {
        .init(format: .init(localized: "about-me-description"), age)
    }
    
    var age: Int {
        Calendar.autoupdatingCurrent.component(.year, from: .init()) - 1991
    }
}

#Preview {
    AboutMeScreen()
}
