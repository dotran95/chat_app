//
//  SignInViewModel.swift
//  Chat
//
//  Created by Do Tran on 19/10/2021.
//

import Foundation

import SwiftUI

class SignInViewModel: ObservableObject, Identifiable {
    
    @Published var username = ""
    @Published var password = ""
}
