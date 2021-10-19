//
//  ConversationModel.swift
//  Chat
//
//  Created by dotn on 12/10/2021.
//

import Foundation

struct ConversationModel: Codable {
    var id: String
    var name: String
    var lastUpdated: String
    var lastMessage: String
    var avatar: String?
}
