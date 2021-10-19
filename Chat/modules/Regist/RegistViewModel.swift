//
//  RegistViewModel.swift
//  Chat
//
//  Created by dotn on 19/10/2021.
//

import SwiftUI

class RegistViewModel: ObservableObject {
    
    @Published var fullname: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    
}
