//
//  SignUpBodyApi.swift
//  Chat
//
//  Created by Do Tran on 20/10/2021.
//

import Foundation

struct SignUpBodyApi: ApiBodyProtocol {
    var username: String
    var password: String
    var fullname: String
    var avatar: String?
    
    func toDic() -> [String : Any] {
        var dic: [String: String] = [
            "username": username,
            "password": password
        ]
        
        if avatar != nil {
            dic["avatar"] = avatar
        }
        
        return dic
    }
}
