//
//  BaseReponse.swift
//  Chat
//
//  Created by Do Tran on 20/10/2021.
//

import Foundation

struct BaseResponse<T: Decodable>: Decodable {
    var statusCode: Int
    var message: String
    var data: T?
}
