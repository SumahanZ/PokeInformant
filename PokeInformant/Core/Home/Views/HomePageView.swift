//
//  ContentView.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 29/08/23.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
