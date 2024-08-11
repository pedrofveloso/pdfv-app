//
//  CareerView.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 02/08/24.
//

import SwiftUI

struct CareerView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("career-title")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(intro)
                
                Text("career-technical")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(ios)
                
                Text("career-tools")
                
                Text("career-companies")
                
                Text("career-js")
                
                Text("career-beyond-technical")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("career-people-management")
                
                Text("career-leadership")
                
                Text("career-conclusion")
            }
            .padding(.trailing, 8)
            .toolbar(.hidden, for: .tabBar)
        }
    }
}

private extension CareerView {
    var timeSinceGraduation: Int {
        Calendar
            .autoupdatingCurrent
            .component(.year, from: .init()) - 2011
    }
    
    var swiftExperienceInYears: Int {
        let swift = Calendar
            .autoupdatingCurrent
            .component(.year, from: .init()) - 2017
        let objc = 1
        
        return swift + objc
    }
    
    var intro: String {
        .init(format: .init(localized: "career-intro"), timeSinceGraduation)
    }
    
    var ios: String {
        .init(format: .init(localized: "career-ios"), swiftExperienceInYears, swiftExperienceInYears - 1)
    }
}

#Preview {
    CareerView()
}
