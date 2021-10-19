//
//  RegistView.swift
//  Chat
//
//  Created by dotn on 19/10/2021.
//

import SwiftUI

struct RegistView: View {
    
    @ObservedObject private var viewModel: RegistViewModel
    private let searchHeight = min(vScale(50), 50)
    private let cornerRadius = min(vScale(10), 10)
    private let sizeAvatar = min(vScale(150), 150)
    
    init(vm: RegistViewModel) {
        self.viewModel = vm
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center, spacing: 20) {
                        
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                Image("camera")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .center)
                                    .aspectRatio(contentMode: .fit)
                            })
                            .frame(width: sizeAvatar, height: sizeAvatar, alignment: .center)
                            .background(Color.black.opacity(0.25))
                            .cornerRadius(sizeAvatar/2)
                            .foregroundColor(.white)
                            Spacer()
                        }.padding(.bottom, 20)
                        
                        RegistInputView(text: $viewModel.fullname,
                                        title: "Full name",
                                        placeholder: "Tran Ngoc Do, Join Wick, Kim Soo Huyn...")
                        
                        RegistInputView(text: $viewModel.username,
                                        title: "User name",
                                        placeholder: "From 4 to 20 character")
                        
                        RegistInputView(text: $viewModel.password,
                                        title: "Password",
                                        placeholder: "From 8 to 20 character",
                                        isSecurity: true)
                        
                        HStack {
                            Button(action: {}, label: {
                                Text("Sign Up").font(AppFont.regular.size(20))
                            })
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                            .padding(.top, 20)
                        }.padding(.horizontal, vScale(Constant.kPadding))
                        Spacer()
                    }.frame(minHeight: UIScreen.main.bounds.height)
                }
            }
            .containerView()
            .statusBar(hidden: true)
        }
    }
}

struct RegistView_Previews: PreviewProvider {
    static var previews: some View {
        RegistView(vm: .init())
    }
}
