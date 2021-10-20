//
//  SignInResponseApi.swift
//  Chat
//
//  Created by Do Tran on 20/10/2021.
//

import Foundation

typealias SignInResponseApi = BaseResponse<SignInData>

struct SignInData: Decodable {
    var access_token: String
    var username: String
    var id: String
    var fullname: String
}


