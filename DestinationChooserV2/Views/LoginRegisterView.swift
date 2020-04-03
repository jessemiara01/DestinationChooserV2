//
//  LoginRegisterView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 11/27/19.
//  Copyright © 2019 Jesse Miara. All rights reserved.
//

import SwiftUI

struct LoginRegisterView: View {

    var choice: Action
    @State private var username: String = ""
    @State private var password: String = ""

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
                TextField("Password", text: $password)
                    .frame(height: 50)
                    .background(Color.dcWhite)
                    .font(.system(size: 25))
                    .foregroundColor(.dcGray)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                Spacer()
                NavigationLink(destination: ShowAllOptionsView()) {
                    ActionButton(choice: choice)
                    }
                Divider()
            }
        }
    }
}

struct LoginRegisterPreview: PreviewProvider {
    static var previews: some View {
        LoginRegisterView(choice: .login)
    }
}


