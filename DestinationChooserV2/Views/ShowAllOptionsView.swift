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
        NavigationView {
            VStack (spacing: 100) {
                Spacer()
                    .frame(height: 0)
                Text("DestinationChooser")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.blue)
                VStack () {
                    Text(NSLocalizedString("Add New Place", comment: "Add New Place title"))
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 5)

                    Text(NSLocalizedString("Show All Places", comment: "Show all places title"))
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 5)

                    Text(NSLocalizedString("Pick A Random Place", comment: "Pick a random place title"))
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
                    }
                    .background(Color.blue)
                
                VStack {
                    Text(NSLocalizedString("Log Out", comment: "Logout Title"))
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
                }
                .background(Color.orange)
                .foregroundColor(Color.white)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
                
                    Spacer()
                
                
            }
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ShowAllOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowAllOptionsView()
    }
}
