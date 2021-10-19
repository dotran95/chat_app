//
//  Font+Additions.swift
//  Chat
//
//  Created by dotn on 12/10/2021.
//

import SwiftUI

//Roboto-Regular", "Roboto-Italic", "Roboto-Thin", "Roboto-ThinItalic", "Roboto-Light", "Roboto-LightItalic", "Roboto-Medium", "Roboto-MediumItalic", "Roboto-Bold", "Roboto-BoldItalic", "Roboto-Black", "Roboto-BlackItalic

enum AppFont {
    case regular
    case bold
    case light
    
    func size(_ size: CGFloat) -> Font {
        switch self {
        case .regular:
            return Font.custom("Roboto-Regular", size: vScale(size))
        case .bold:
            return Font.custom("Roboto-Bold", size: vScale(size))
        case .light:
            return Font.custom("Roboto-Light", size: vScale(size))
        }
    }
}
