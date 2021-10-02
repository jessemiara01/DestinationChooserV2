//
//  ShowDestinationsView.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 10/2/21.
//  Copyright © 2021 Jesse Miara. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct ShowDestinationsView: View {
    init(){
        UITableView.appearance().backgroundColor = UIColor(Color.dcGray)
        UITableView.appearance().tableFooterView = UIView()
        UINavigationBar.appearance().largeTitleTextAttributes =
            [.font : UIFont(name: "Teko-Bold", size: 40)!,
            .foregroundColor : UIColor(Color.dcWhite)]
    }

    @State private var showAddView = false
    var body: some View {
        NavigationView {
            List {
                Text("Hello World")
                .listRowBackground(Color.dcWhite)
                Text("Hello World")
                    .listRowBackground(Color.dcWhite)
                Text("Hello World")
                    .listRowBackground(Color.dcWhite)
            }
            .navigationTitle("All Destinations")
            .foregroundColor(.dcBlue)
            
            .toolbar(content: {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        showAddView.toggle()
                    }) {
                        Image(systemName: "plus")
                    }
                    }
                })
            
            .sheet(isPresented: $showAddView, content: {
                AddLocationView()
            })
        }
    }
    
}

@available(iOS 14.0, *)
struct ShowDestinationsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowDestinationsView()
    }
}
