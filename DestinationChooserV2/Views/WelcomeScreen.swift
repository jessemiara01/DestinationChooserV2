//
//  ContentView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 11/27/19.
//  Copyright © 2019 Jesse Miara. All rights reserved.
//

import SwiftUI



struct WelcomeScreen: View {
    
    var body: some View {
        ZStack {
            Color.dcCharcoal
            .edgesIgnoringSafeArea(.all)
            VStack () {
                TitleText(text: "Welcome to DestinationChooser!")
                Spacer()
                NavigationLink(destination: LoginRegisterView(choice: .login)) {
                    ActionButton(choice: .login)
                }
                NavigationLink(destination: LoginRegisterView(choice: .register)) {
                    ActionButton(choice: .register)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}


