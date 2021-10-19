//
//  View+additions.swift
//  Chat
//
//  Created by dotn on 12/10/2021.
//

import SwiftUI

struct Container: ViewModifier {
    func body(content: Content) -> some View {
        content
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.backgroundColor.edgesIgnoringSafeArea(.all))
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
    }
}

extension View {
    func containerView() -> some View {
        self.modifier(Container())
    }
}
