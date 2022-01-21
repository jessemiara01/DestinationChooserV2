//
//  LoginRegisterView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 11/27/19.
//  Copyright © 2019 Jesse Miara. All rights reserved.
//

import SwiftUI
import Firebase

struct LoginRegisterView: View {

    var choice: Action
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showBadAuthAlert: Bool = false
    @State private var errorMessage: String = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack{
            Color.dcCharcoal
                .edgesIgnoringSafeArea(.all)
            VStack() {
                TitleText(text: choice.actionText)
                Divider()
                TextField("Username", text: $username)
                    .frame(height: 50)
                    .background(Color.dcWhite)
                    .font(.system(size: 25))
                    .foregroundColor(.dcGray)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                SecureField("Password", text: $password)
                    .frame(height: 50)
                    .background(Color.dcWhite)
                    .font(.system(size: 25))
                    .foregroundColor(.dcGray)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                Spacer()
                Button(action: {
                    handleLogin()
                }, label: {
                    ActionButton(choice: choice)
                })
                Divider()
            }
        }
        .alert(isPresented: $showBadAuthAlert, content: {
            Alert(title: Text("Login Failed"), message: Text(errorMessage))
        })
    }
    
    private func handleLogin() {
        switch choice {
        case .login:
            Auth.auth().signIn(withEmail: username, password: password) { result , error in
                if let error = error {
                    showBadAuthAlert.toggle()
                    errorMessage = error.localizedDescription
                } else {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        case .register:
            Auth.auth().createUser(withEmail: username, password: password) { result, error in
                if let error = error {
                    showBadAuthAlert.toggle()
                    errorMessage = error.localizedDescription
                } else {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct LoginRegisterPreview: PreviewProvider {
    static var previews: some View {
        LoginRegisterView(choice: .login)
    }
}


