//
//  ContentView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 11/27/19.
//  Copyright © 2019 Jesse Miara. All rights reserved.
//

import SwiftUI

enum LoginRegister {
    case login
    case register
    
    var actionText: String {
        switch self {
        case .login:
            return NSLocalizedString("Log In", comment: "Login String")
        case .register:
            return NSLocalizedString("Register", comment: "Register String")
        }
    }

}

struct WelcomeScreen: View {
    
    var body: some View {
        NavigationView {
            VStack (alignment: .center, spacing:0) {
                Text(NSLocalizedString("Welcome to DestinationChooser!", comment: "Title text"))
                    .font(.system(size: 40))
                    .foregroundColor(Color.green)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    
                NavigationLink(destination: LoginRegisterView(actionText: LoginRegister.login.actionText)) {
                    Text(LoginRegister.login.actionText)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
                        .background(Color.blue)
                        .foregroundColor(Color.green)
                }
                NavigationLink(destination: LoginRegisterView(actionText: LoginRegister.register.actionText)) {
                    Text(LoginRegister.register.actionText)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
                    .background(Color.orange)
                    .foregroundColor(Color.blue)
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .padding(EdgeInsets(top: 150, leading: 0, bottom: 50, trailing: 0))
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
