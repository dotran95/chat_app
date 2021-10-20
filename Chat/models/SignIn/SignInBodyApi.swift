//
//  SignIn.body.swift
//  Chat
//
//  Created by Do Tran on 20/10/2021.
//

import Foundation

struct SignInBodyApi: ApiBodyProtocol {
    var username: String
    var password: String
    
    func toDic() -> [String : Any] {
        return [
            "username": username,
            "password": password
        ]
    }
}
