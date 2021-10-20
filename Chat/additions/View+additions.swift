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

// MARK: - LeadingAlignmentModifier
struct LeadingAlignmentModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        HStack(spacing: 0) {
            content
            Spacer(minLength: 0)
        }
    }
}

extension View {
    func leadingAlignment() -> some View {
        modifier(LeadingAlignmentModifier())
    }
}

// MARK: - TrailingAlignmentModifier
struct TrailingAlignmentModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
            content
        }
    }
}

extension View {
    func trailingAlignment() -> some View {
        modifier(TrailingAlignmentModifier())
    }
}

// MARK: - TopAlignmentModifier
struct TopAlignmentModifier: ViewModifier {
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            content
            Spacer(minLength: 0)
        }
    }
}

extension View {
    func topAlignment() -> some View {
        modifier(TopAlignmentModifier())
    }
}

// MARK: - BottomAlignmentModifier
struct BottomAlignmentModifier: ViewModifier {
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            Spacer(minLength: 0)
            content
        }
    }
}

extension View {
    func bottomAlignment() -> some View {
        modifier(BottomAlignmentModifier())
    }
}

// MARK: - VCenterAlignmentModifier
struct VCenterAlignmentModifier: ViewModifier {
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            Spacer(minLength: 0)
            content
            Spacer(minLength: 0)
        }
    }
}

extension View {
    func vCenterAlignment() -> some View {
        modifier(VCenterAlignmentModifier())
    }
}

// MARK: - HCenterAlignmentModifier
struct HCenterAlignmentModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
            content
            Spacer(minLength: 0)
        }
    }
}

extension View {
    func hCenterAlignment() -> some View {
        modifier(HCenterAlignmentModifier())
    }
}

// MARK: - DismissingKeyboard
struct DismissingKeyboard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .contentShape(Rectangle())
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
    }
}

extension View {
    func dismissKeyboardOnTap() -> some View {
        return modifier(DismissingKeyboard())
    }
}
