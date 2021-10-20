//
//  Auth.swift
//  Chat
//
//  Created by Do Tran on 20/10/2021.
//

import Foundation

enum AuthEndpoint {
    case signIn(params: SignInBodyApi)
    case signUp(params: SignUpBodyApi)
}

extension AuthEndpoint: Endpoint {
    var header: [String : String]? {
        return [:]
    }
    
    var method: Methods {
        return .post
    }
    
    var query: [String : Any]? {
        return [:]
    }
    
    var body: [String : Any]? {
        switch self {
        case .signIn(let params):
            return params.toDic()
        case .signUp(let params):
            return params.toDic()
        }
    }
    
    var encode: Encodes {
        return .json
    }
    
    var path: String {
        switch self {
        case .signIn:
            return "sign-in"
        case .signUp:
            return "sign-up"
        }
    }
}
