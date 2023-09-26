//
//  PokemonGrid.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 26/09/23.
//

import SwiftUI

struct PokedexGrid: View {
    private let pokemonDummyArray: [String] = ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander"]
    private let itemDummyArray: [String] = ["MasterBall", "Ivysaur", "Venusaur", "Charmander"]
    let selectedTab: PokedexFilterOptions?
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(pokemonDummyArray, id: \.self) { item in
                    if let selectedTab {
                        PokedexCard(item: item, selectedTab: selectedTab)
                    }
                }
                
                ForEach(pokemonDummyArray, id: \.self) { item in
                    if let selectedTab {
                        PokedexCard(item: item, selectedTab: selectedTab)
                    }
                }
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 20)
        }
    }
}

struct PokedexGrid_Previews: PreviewProvider {
    static var previews: some View {
        PokedexGrid(selectedTab: .move)
    }
}
