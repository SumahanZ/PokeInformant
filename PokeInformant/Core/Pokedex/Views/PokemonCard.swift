//
//  PokemonCard.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 26/09/23.
//

import SwiftUI

struct PokedexCard: View {
    let item: String
    let selectedTab: PokedexFilterOptions
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                HStack {
                    Text(item)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Spacer()
                    Text("#001")
                        .fontWeight(.semibold)
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.5))
                }
                .foregroundColor(.white)

                HStack {
                    VStack(alignment: .leading) {
                        Text("Flying")
                            .font(.caption)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 4)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.2)
                            .background(.thinMaterial.opacity(0.5))
                            .cornerRadius(5)

                        Text("Psychic")
                            .font(.caption)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.2)
                            .background(.thinMaterial.opacity(0.5))
                            .cornerRadius(5)
                    }
                    .foregroundColor(.white)
                    .fontWeight(.medium)

                    Spacer()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green.cornerRadius(10))



            Image("pokemon-2")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 70)
                .background(
                    Image("pokeball")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 70)
                        .padding()
                        .clipped()
                        .foregroundColor(.white.opacity(0.3))

                )
                .padding(.trailing, 10)
        }
    }
}

struct PokedexCard_Previews: PreviewProvider {
    static var previews: some View {
        PokedexCard(item: "Bulbasaur", selectedTab: .pokemon)
    }
}

extension PokedexCard {
    private var pokemonItemCard: some View {
        EmptyView()
    }

    private var moveCard: some View {
        EmptyView()
    }

    private var regionCard: some View {
        EmptyView()
    }
}
