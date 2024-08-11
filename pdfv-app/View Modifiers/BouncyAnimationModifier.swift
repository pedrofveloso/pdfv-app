//
//  BouncyAnimationModifier.swift
//  pdfv-app
//
//  Created by Pedro Veloso on 02/08/24.
//

import SwiftUI

private struct BouncyAnimationModifier: ViewModifier {
    @State var isVisible: Bool = false
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(isVisible ? 1 : 0)
            .onAppear {
                withAnimation(
                    .interpolatingSpring(
                        stiffness: 300,
                        damping: 15
                    )
                    .delay(0.2)
                ) {
                    isVisible = true
                }
            }
            .onDisappear {
                isVisible = false
            }
    }
}

extension View {
    func bouncyAnimationEffect() -> some View {
        self.modifier(BouncyAnimationModifier())
    }
}
