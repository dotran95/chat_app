//
//  ConversationItem.swift
//  Chat
//
//  Created by dotn on 12/10/2021.
//

import SwiftUI

struct ConversationItem: View {
    
    var item: ConversationModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10, content: {
            Text(item.name.first?.uppercased() ?? "")
                .frame(width: vScale(44), height: vScale(44), alignment: .center)
                .background(Color.gray)
                .cornerRadius(vScale(22))
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(item.name)
                    .font(AppFont.regular.size(vScale(15)))
                    .foregroundColor(.white)
                    .lineLimit(1)
                Text(item.lastMessage)
                    .font(AppFont.light.size(vScale(13)))
                    .foregroundColor(.white)
                    .lineLimit(1)
                HStack{
                    Spacer()
                }
            })
            
            Text(item.lastUpdated)
                .frame(width: vScale(60), height: vScale(44), alignment: .center)
                .font(AppFont.regular.size(vScale(13))).foregroundColor(.white)

        })
        .padding(.horizontal, vScale(4))
        .padding(.vertical, 10)
        .background(Color.backgroundColor)
    }
}

struct ConversationItem_Previews: PreviewProvider {
    static var previews: some View {
        ConversationItem(item: ConversationModel(id: "DASDASD",
                                                 name: "Maciej Kowalski",
                                                 lastUpdated: "08:43",
                                                 lastMessage: "maciej.kowalski@email.com",
                                                 avatar: nil))
    }
}
