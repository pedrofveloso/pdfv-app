//
//  AboutMeView.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 02/08/24.
//

import SwiftUI

struct AboutMeView: View {
    @State private var isVisible = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("about-me-title")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(description)

            Text("about-me-hobbies")
            
            Text("about-me-chess-invite")
        }
    }
}

private extension AboutMeView {
    var description: String {
        .init(format: .init(localized: "about-me-description"), age)
    }
    
    var age: Int {
        Calendar.autoupdatingCurrent.component(.year, from: .init()) - 1991
    }
}

#Preview {
    AboutMeView()
}
