//
//  Endpoint.swift
//  Chat
//
//  Created by Do Tran on 20/10/2021.
//

import Foundation

enum Methods: String {
    case get = "GET"
    case post = "POST"
}

enum Encodes {
    case uri
    case json
    case formData
    case none
}

protocol Endpoint {
    var header: [String: String]? { get }
    var method: Methods { get }
    var path: String {get}
    var query: [String: Any]?  {get}
    var body: [String: Any]?  {get}
    var encode: Encodes { get }
}
