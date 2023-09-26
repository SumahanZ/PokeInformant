//
//  PokemonGrid.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 26/09/23.
//

import SwiftUI

struct PokedexGrid: View {
    private let pokemonDummyArray: [String] = ["Fletchlinder", "Ivysaur", "Venusaur", "Charmander"]
    private let itemDummyArray: [String] = ["Poke Ball", "Great Ball", "Ultra Ball", "Master Ball"]
    private let moveDummyArray: [String] = ["Pound", "Slash", "Hyper Beam", "Kick"]
    let selectedTab: PokedexFilterOptions?
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                if let selectedTab {
                    switch selectedTab {
                    case .pokemon:
                        ForEach(pokemonDummyArray, id: \.self) { item in
                            PokedexCard(item: item, selectedTab: .pokemon)
                        }
                    case .move:
                        ForEach(moveDummyArray, id: \.self) { item in
                            PokedexCard(item: item, selectedTab: .move)
                        }
                    case .item:
                        ForEach(itemDummyArray, id: \.self) { item in
                            PokedexCard(item: item, selectedTab: .item)
                        }
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
