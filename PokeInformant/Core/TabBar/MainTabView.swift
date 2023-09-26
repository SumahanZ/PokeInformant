//
//  MainTabView.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 25/09/23.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            PokedexView()
                .tabItem {
                    VStack {
                        Image("pokedex-icon")
                            .renderingMode(.template)
                            .resizable()
                        Text("Pokedex")
                    }
                }
                .tag(1)
            
            Text("Matchup")
                .tabItem {
                    VStack {
                        Image("matchup-icon")
                            .renderingMode(.template)
                            .resizable()
                        Text("Matchup")
                    }
                }
                .tag(2)
            
            Text("Favorites")
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
                .tag(3)
        }
        .tint(.red)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
