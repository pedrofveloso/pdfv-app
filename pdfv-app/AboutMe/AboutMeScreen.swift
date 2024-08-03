//
//  AboutMeScreen.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 27/07/24.
//

import SwiftUI

struct AboutMeScreen: View {    
    var body: some View {
        VStack {
            TabView() {
                AboutMeView()
                
                EducationView()
                
                Text("career-title")
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .padding()
        }
    }
}

#Preview {
    AboutMeScreen()
}
