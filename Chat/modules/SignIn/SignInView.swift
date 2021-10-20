//
//  SignInView.swift
//  Chat
//
//  Created by Do Tran on 19/10/2021.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel = SignInViewModel()
    let searchHeight = min(vScale(50), 50)
    let cornerRadius = min(vScale(10), 10)
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .center, spacing: 30) {
                    Text("Sign In").font(AppFont.bold.size(50)).padding(.bottom, 30)
                    VStack {
                        Text("Username").leadingAlignment()
                        HStack {
                            TextField("Username", text: $viewModel.username)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                .frame(height: searchHeight, alignment: .leading)
                        }
                        .padding(.leading, 15)
                        .background(Color.black.opacity(0.25))
                        .frame(height: searchHeight, alignment: .center)
                        .cornerRadius(cornerRadius)
                    }
                    .padding(.horizontal, vScale(Constant.kPadding))
                    
                    VStack {
                        Text("Password").leadingAlignment()
                        HStack {
                            SecureField("Password", text: $viewModel.password)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                .frame(height: searchHeight, alignment: .leading)
                        }
                        .padding(.leading, 15)
                        .background(Color.black.opacity(0.25))
                        .frame(height: searchHeight, alignment: .center)
                        .cornerRadius(cornerRadius)
                    }
                    .padding(.horizontal, vScale(Constant.kPadding))
                    
                    VStack {
                        Button(action: {
                            
                        }, label: {
                            Text("Sign In").foregroundColor(.white)
                        })
                        .frame(height: searchHeight, alignment: .center)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(cornerRadius)
                    }
                    .padding(.horizontal, vScale(Constant.kPadding))
                }.vCenterAlignment()
            }
            .containerView()
            .statusBar(hidden: true)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
