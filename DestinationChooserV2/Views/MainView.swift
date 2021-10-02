//
//  MainView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 10/2/21.
//  Copyright © 2021 Jesse Miara. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct MainView: View {
    var body: some View {
        TabView {
            ShowDestinationsView()
                .tabItem {
                    Label("All Destinations", systemImage: "square.grid.2x2.fill")
                }
            WelcomeScreen()
                .tabItem {
                    Label("Random Destination", systemImage: "shuffle")
                }
        }
    }
}

@available(iOS 14.0, *)
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
