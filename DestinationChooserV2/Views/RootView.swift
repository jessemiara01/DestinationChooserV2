//
//  RootView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 4/3/20.
//  Copyright © 2020 Jesse Miara. All rights reserved.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationView {
           WelcomeScreen()
        }

    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
