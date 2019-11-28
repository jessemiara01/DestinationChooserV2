//
//  LoginRegisterView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 11/27/19.
//  Copyright © 2019 Jesse Miara. All rights reserved.
//

import SwiftUI

struct LoginRegisterView: View {

    var actionText: String
    @State private var username: String = ""
    @State private var password: String = ""

    
    var body: some View {
            VStack(alignment: .center, spacing: 20) {
                Text(actionText)
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                TextField("Username", text: $username)
                    .background(Color.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                
                TextField("Password", text: $password)
                    .background(Color.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(destination: ShowAllOptionsView()) {
                    Text(actionText)
                }
                .font(.system(size:30))
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
                .background(Color.blue)
            }
            .padding(EdgeInsets(top: 150, leading: 0, bottom: 50, trailing: 0))
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)
        }
}

struct LoginRegisterPreview: PreviewProvider {
    static var previews: some View {
        LoginRegisterView(actionText: "Preview")
    }
}
