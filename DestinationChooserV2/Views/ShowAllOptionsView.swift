//
//  ShowAllOptionsView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 11/28/19.
//  Copyright © 2019 Jesse Miara. All rights reserved.
//

import SwiftUI

struct ShowAllOptionsView: View {
    var body: some View {
        ZStack {
            Color.dcCharcoal
                .edgesIgnoringSafeArea(.all)
            VStack {
                Divider()
                TitleText(text: "DestinationChooser")
                Spacer()
                NavigationLink(destination: WelcomeScreen()) {
                    ActionButton(choice: .addNew)
                        .padding(.vertical)
                }
                NavigationLink(destination: WelcomeScreen()) {
                        ActionButton(choice: .random)
                            .padding(.vertical)
                }
                NavigationLink(destination: WelcomeScreen()) {
                        ActionButton(choice: .showAll)
                            .padding(.vertical)
                }
                Spacer()
                NavigationLink(destination: WelcomeScreen()) {
                    ActionButton(choice: .login)
                }
                Divider()
                }.navigationBarTitle("").navigationBarHidden(true)
        }
    }
}

struct ShowAllOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowAllOptionsView()
    }
}
