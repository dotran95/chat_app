//
//  ListChatView.swift
//  Chat
//
//  Created by dotn on 12/10/2021.
//

import SwiftUI

struct ListChatView: View {
    
    @ObservedObject var viewModel = ListChatViewModel()
    @State private var username: String = ""
    
    let searchHeight = min(vScale(40), 40)
    let cornerRadius = min(vScale(10), 10)
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center, spacing: 24, content: {
                    Image("avatar")
                        .frame(width: vScale(45), height: vScale(45), alignment: .center)
                    Text("Martina Wolna")
                        .foregroundColor(.white)
                        .font(AppFont.regular.size(20))
                    Spacer()
                })
                .padding(.all, vScale(Constant.kPadding))
                
                HStack(alignment: .center, spacing: 15, content: {
                    HStack {
                        TextField("Search...", text: $username)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        Button(action: addFriend, label: {
                            Image("search").frame(width: vScale(18), height: vScale(18), alignment: .center)
                        })
                        .frame(width: searchHeight, height: searchHeight, alignment: .center)
                        .background(Color.searchButton)
                        .cornerRadius(cornerRadius)
                    }
                    .padding(.leading, 10)
                    .background(Color.black.opacity(0.25))
                    .frame(height: searchHeight, alignment: .center)
                    .cornerRadius(cornerRadius)
                    
                    Button(action: addFriend, label: {
                        Text("+").font(AppFont.regular.size(20)).foregroundColor(.white)
                    })
                    .frame(width: searchHeight, height: searchHeight, alignment: .center)
                    .background(Color.addFriendButton)
                    .cornerRadius(cornerRadius)
                })
                .padding([.leading, .trailing], vScale(Constant.kPadding))
                
                ScrollView {
                    LazyVStack {
                        ForEach(viewModel.items, id: \.id) { item in
                            ConversationItem(item: item).padding([.horizontal], 20)
                        }
                    }
                }
                
                Spacer()
            }
            .containerView()
            .statusBar(hidden: true)
        }
    }
}

extension ListChatView {
    func addFriend() {
        print("Add friend")
    }
}

struct ListChatView_Previews: PreviewProvider {
    static var previews: some View {
        ListChatView()
    }
}
