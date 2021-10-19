//
//  ListChatViewModel.swift
//  Chat
//
//  Created by dotn on 12/10/2021.
//

import SwiftUI

class ListChatViewModel: ObservableObject {
    var items: [ConversationModel] = [
        ConversationModel(id: "1", name: "Maciej Kowalski", lastUpdated: "08:43", lastMessage: "maciej.kowalski@email.com", avatar: nil),
        ConversationModel(id: "2", name: "Odeusz Piotrowski", lastUpdated: "Tue", lastMessage: "Will do, super, thank you", avatar: nil),
        ConversationModel(id: "3", name: "Bożenka Malina", lastUpdated: "Sun", lastMessage: "Uploaded file.", avatar: nil),
        ConversationModel(id: "4", name: "Maciej Orłowski", lastUpdated: "23 Mar", lastMessage: "Here is another tutorial, if you...", avatar: nil),
        ConversationModel(id: "5", name: "rysia Eurydyk", lastUpdated: "18 Mar", lastMessage: "How is koronavirus?", avatar: nil),
        ConversationModel(id: "6", name: "MC Bastek", lastUpdated: "01 Feb", lastMessage: "no pracujemy z domu przez 5 ...", avatar: nil),
        ConversationModel(id: "11", name: "Maciej Kowalski", lastUpdated: "08:43", lastMessage: "maciej.kowalski@email.com", avatar: nil),
        ConversationModel(id: "22", name: "Odeusz Piotrowski", lastUpdated: "Tue", lastMessage: "Will do, super, thank you", avatar: nil),
        ConversationModel(id: "33", name: "Bożenka Malina", lastUpdated: "Sun", lastMessage: "Uploaded file.", avatar: nil),
        ConversationModel(id: "44", name: "Maciej Orłowski", lastUpdated: "23 Mar", lastMessage: "Here is another tutorial, if you...", avatar: nil),
        ConversationModel(id: "55", name: "rysia Eurydyk", lastUpdated: "18 Mar", lastMessage: "How is koronavirus?", avatar: nil),
        ConversationModel(id: "66", name: "MC Bastek", lastUpdated: "01 Feb", lastMessage: "no pracujemy z domu przez 5 ...", avatar: nil),
        ConversationModel(id: "21", name: "Maciej Kowalski", lastUpdated: "08:43", lastMessage: "maciej.kowalski@email.com", avatar: nil),
        ConversationModel(id: "12", name: "Odeusz Piotrowski", lastUpdated: "Tue", lastMessage: "Will do, super, thank you", avatar: nil),
        ConversationModel(id: "233", name: "Bożenka Malina", lastUpdated: "Sun", lastMessage: "Uploaded file.", avatar: nil),
        ConversationModel(id: "334", name: "Maciej Orłowski", lastUpdated: "23 Mar", lastMessage: "Here is another tutorial, if you...", avatar: nil),
        ConversationModel(id: "325", name: "rysia Eurydyk", lastUpdated: "18 Mar", lastMessage: "How is koronavirus?", avatar: nil),
        ConversationModel(id: "326", name: "MC Bastek", lastUpdated: "01 Feb", lastMessage: "no pracujemy z domu przez 5 ...", avatar: nil),
        ConversationModel(id: "112", name: "Maciej Kowalski", lastUpdated: "08:43", lastMessage: "maciej.kowalski@email.com", avatar: nil),
        ConversationModel(id: "213", name: "Odeusz Piotrowski", lastUpdated: "Tue", lastMessage: "Will do, super, thank you", avatar: nil),
        ConversationModel(id: "342", name: "Bożenka Malina", lastUpdated: "Sun", lastMessage: "Uploaded file.", avatar: nil),
        ConversationModel(id: "4123", name: "Maciej Orłowski", lastUpdated: "23 Mar", lastMessage: "Here is another tutorial, if you...", avatar: nil),
        ConversationModel(id: "335", name: "rysia Eurydyk", lastUpdated: "18 Mar", lastMessage: "How is koronavirus?", avatar: nil),
        ConversationModel(id: "622", name: "MC Bastek", lastUpdated: "01 Feb", lastMessage: "no pracujemy z domu przez 5 ...", avatar: nil),
        ConversationModel(id: "111", name: "Maciej Kowalski", lastUpdated: "08:43", lastMessage: "maciej.kowalski@email.com", avatar: nil),
        ConversationModel(id: "244", name: "Odeusz Piotrowski", lastUpdated: "Tue", lastMessage: "Will do, super, thank you", avatar: nil),
        ConversationModel(id: "333", name: "Bożenka Malina", lastUpdated: "Sun", lastMessage: "Uploaded file.", avatar: nil),
        ConversationModel(id: "422", name: "Maciej Orłowski", lastUpdated: "23 Mar", lastMessage: "Here is another tutorial, if you...", avatar: nil),
        ConversationModel(id: "522", name: "rysia Eurydyk", lastUpdated: "18 Mar", lastMessage: "How is koronavirus?", avatar: nil),
        ConversationModel(id: "611", name: "MC Bastek", lastUpdated: "01 Feb", lastMessage: "no pracujemy z domu przez 5 ...", avatar: nil)
    ]
}
