//
//  SignUpInputView.swift
//  Chat
//
//  Created by dotn on 20/10/2021.
//

import SwiftUI

struct SignUpInputView: View {
    
    @Binding var text: String
    var title: String
    var placeholder: String
    var isSecurity = false
    private let searchHeight = min(vScale(50), 50)

    var body: some View {
        if isSecurity {
            VStack(alignment: .leading, spacing: 15, content: {
                Text(title).font(AppFont.regular.size(17))
                HStack {
                   SecureField(placeholder, text: $text)
                }
                .padding(.horizontal, 10)
                .frame(height: searchHeight, alignment: .leading)
                .background(Color.black.opacity(0.25))
                .cornerRadius(10)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            }).padding(.horizontal, vScale(Constant.kPadding))
        } else {
            VStack(alignment: .leading, spacing: 15, content: {
                Text(title).font(AppFont.regular.size(17))
                HStack {
                   TextField(placeholder, text: $text)
                }
                .padding(.horizontal, 10)
                .frame(height: searchHeight, alignment: .leading)
                .background(Color.black.opacity(0.25))
                .cornerRadius(10)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            }).padding(.horizontal, vScale(Constant.kPadding))
        }
    }
}

struct RegistInputView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpInputView(text: .constant("User name"), title: "User Name", placeholder: "ex: Tran Ngoc Do, Jogn Wick, Kim Soo Huyn...")
    }
}
