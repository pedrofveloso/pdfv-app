//
//  EducationView.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 02/08/24.
//

import SwiftUI

struct EducationView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("education-title")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("education-description")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .bouncyAnimationEffect()
    }
}

#Preview {
    EducationView()
}