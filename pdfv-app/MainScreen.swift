//
//  MainScreen.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 27/07/24.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16.0) {
                Image("profile-pic")
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundStyle(.appPrimary)
                    }
                
                Text("name")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.charcoalGray)
                
                Text("profession")
                    .font(.subheadline)
                    .foregroundStyle(.darkGray)
                            
                CardView(
                    title: "about-me-title",
                    iconName: "person.text.rectangle"
                )
                
            }
            .padding(.horizontal, 48.0)
            .containerRelativeFrame([.vertical, .horizontal])
            .background(Color.background)
        }
    }
}

struct CardView: View {
    let title: LocalizedStringKey
    let iconName: String
    
    var body: some View {
        NavigationLink {
            AboutMeScreen()
        } label: {
            Label(
                title: {
                    Text(title)
                        .fontWeight(.black)
                },
                icon: {
                    Image(systemName: iconName)
                }
            )
            .foregroundStyle(.darkGrayUniversal)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16.0)
            .background(.appPrimaryLight)
            .clipShape(Capsule())
            .shadow(color: .gray.opacity(0.2), radius: 3, y: 2)
        }
        
        
    }
}

#Preview {
    MainScreen()
}
