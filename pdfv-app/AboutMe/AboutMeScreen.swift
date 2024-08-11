//
//  AboutMeScreen.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 27/07/24.
//

import SwiftUI

struct AboutMeScreen: View {
    @State private var selection: Tab = .aboutMe
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                tab.view
                    .tag(tab)
                    .bouncyAnimationEffect()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.background)
            }
        }
        .padding(16.0)
        .background(Color.background)
        .navigationTitle("about-me-title")
        .safeAreaInset(edge: .bottom) {
            PageIndicator(selection: $selection)
        }
    }
}

#Preview {
    AboutMeScreen()
}

private extension AboutMeScreen {
    enum Tab: Int, CaseIterable {
        case aboutMe
        case education
        case career
        
        @ViewBuilder
        var view: some View {
            switch self {
            case .aboutMe:
                AboutMeView()
            case .education:
                EducationView()
            case .career:
                CareerView()
            }
        }
        
        var pageIndicatorIconName: String {
            switch self {
            case .aboutMe:
                "person.circle.fill"
            case .education:
                "graduationcap.circle.fill"
            case .career:
                "hammer.circle.fill"
            }
        }
    }
    
    
    struct PageIndicator: View {
        @Binding var selection: Tab
        
        var body: some View {
            HStack(spacing: 16.0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Image(systemName: tab.pageIndicatorIconName)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaleEffect(selection == tab ? 1.3 : 1)
                        .foregroundStyle(selection == tab ? .appPrimary : .appPrimaryLight)
                        .onTapGesture {
                            withAnimation {
                                selection = tab
                            }
                        }
                }
            }
        }
    }
}


