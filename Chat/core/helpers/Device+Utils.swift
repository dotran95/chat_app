//
//  Device+Utils.swift
//  Chat
//
//  Created by dotn on 12/10/2021.
//

import SwiftUI

func vScale(_ size: CGFloat) -> CGFloat {
    return size * UIScreen.main.bounds.height / 812
}

func hScale(_ size: CGFloat) -> CGFloat {
    return size * UIScreen.main.bounds.width / 375
}
