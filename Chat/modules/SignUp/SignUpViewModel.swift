//
//  RegistViewModel.swift
//  Chat
//
//  Created by dotn on 19/10/2021.
//

import SwiftUI

class SignUpViewModel: ObservableObject {
    
    @Published var fullname: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    
    
    func callApiSignUp() {
        let endpoint = AuthEndpoint.signUp(params: SignUpBodyApi(username: username, password: password, fullname: fullname, avatar: nil))
        let route = Router(endpoint)

    }
}
