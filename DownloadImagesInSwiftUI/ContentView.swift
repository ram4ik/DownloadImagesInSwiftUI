//
//  ContentView.swift
//  DownloadImagesInSwiftUI
//
//  Created by ramil on 29/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            URLImage(url: Constants.imageURL)
                .frame(width: 300, height: 300)
                .scaledToFill()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
