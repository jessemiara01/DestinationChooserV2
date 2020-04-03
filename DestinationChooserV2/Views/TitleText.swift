//
//  TitleText.swift
//  DestinationChooserV2
//
//  Created by Jesse Miara on 4/2/20.
//  Copyright © 2020 Jesse Miara. All rights reserved.
//

import SwiftUI

struct TitleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.custom("Teko-Bold", size: 40))
            .foregroundColor(.dcWhite)
            .multilineTextAlignment(.center)
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.dcCharcoal
                .edgesIgnoringSafeArea(.all)
            TitleText(text: "Title Text")
        }

    }
}
