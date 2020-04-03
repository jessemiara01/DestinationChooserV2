//
//  LoginRegisterButton.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 4/2/20.
//  Copyright © 2020 Jesse Miara. All rights reserved.
//

import SwiftUI

enum Action {
    case login
    case register
    case addNew
    case showAll
    case random
    
    var actionText: String {
        switch self {
        case .login:
            return NSLocalizedString("Log In", comment: "Login String")
        case .register:
            return NSLocalizedString("Register", comment: "Register String")
        case .addNew:
                return NSLocalizedString("Add a New Place", comment: "Add New String")
        case .showAll:
                return NSLocalizedString("Show All Places", comment: "Show All String")
        case .random:
                return NSLocalizedString("Pick a Random Place", comment: "Random String")
        }
    }

}

struct ActionButton: View {
    var choice: Action
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .foregroundColor(.dcBlue)
            .frame(height: 60)
            .overlay(Text(choice.actionText)
                .foregroundColor(.dcGray))
            .padding(.horizontal)
            .overlay(RoundedRectangle(cornerRadius: 50)
                .stroke(Color.dcWhite, lineWidth: 2)
                .padding(.horizontal))
    }
}


struct LoginRegisterButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(choice: .register)
    }
}
