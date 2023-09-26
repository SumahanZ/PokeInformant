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
    private let type: PokemonType = .grass
    private let type1: PokemonType = .poison

    var body: some View {
        VStack {
            switch selectedTab {
            case .pokemon:
                pokemonCard
            case .move:
                moveCard
            case .item:
                itemCard
            }
        }
    }
}

struct PokedexCard_Previews: PreviewProvider {
    static var previews: some View {
        PokedexCard(item: "Master Ball", selectedTab: .item)
    }
}

extension PokedexCard {
    private var pokemonCard: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                HStack {
                    Text(item)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Spacer()
                    Text("#001")
                        .fontWeight(.bold)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                .foregroundColor(.white)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Grass")
                            .font(.caption2)
                            .padding(.vertical, 5)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.17)
                            .background(Color(uiColor: type.typeColor))
                            .cornerRadius(20)
                        
                        Text("Poison")
                            .font(.caption2)
                            .padding(.vertical, 5)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.17)
                            .background(Color(uiColor: type1.typeColor))
                            .cornerRadius(20)
                    }
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    
                    Spacer()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(uiColor: type.typeColor))
                    .opacity(0.8)
                    .shadow(color: Color.gray.opacity(0.9), radius: 5, x: 0, y: 2)
            )
            
            
            
            
            Image("pokemon-2")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 70)
                .background(
                    Image("pokeball")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 80)
                        .padding()
                        .clipped()
                        .foregroundColor(.white.opacity(0.3))
                    
                )
                .padding(.trailing, 10)
        }
    }
    
    private var moveCard: some View {
        ZStack {
            VStack(alignment: .center) {
                HStack {
                    Text(item)
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                .foregroundColor(.white)
                
                VStack(alignment: .center, spacing: 15) {
                    Image("normal")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 55)
                    
                    Text("Normal")
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 4)
                        .background(.thinMaterial.opacity(0.5))
                        .cornerRadius(5)
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(
                Color.gray
                    .cornerRadius(10)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(uiColor: type.typeColor))
                            .opacity(0.8)
                            .shadow(color: Color.gray.opacity(0.9), radius: 5, x: 0, y: 2)
                    )
            )
        }
    }
    
    private var itemCard: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                HStack {
                    Text(item)
                        .font(.subheadline)
                        .fontWeight(.bold)

                    Spacer()
                    Text("#001")
                        .fontWeight(.bold)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                .foregroundColor(.white)

                HStack {
                    VStack(alignment: .leading) {
                        Text("Handheld")
                            .font(.caption2)
                            .padding(.vertical, 5)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.17)
                            .background(Color(uiColor: type1.typeColor))
                            .cornerRadius(20)

                        Text("Balls")
                            .font(.caption2)
                            .padding(.vertical, 5)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.17)
                            .background(Color(uiColor: type1.typeColor))
                            .cornerRadius(20)
                    }
                    .foregroundColor(.white)
                    .fontWeight(.medium)

                    Spacer()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(uiColor: type1.typeColor))
                    .opacity(0.8)
                    .shadow(color: Color.gray.opacity(0.9), radius: 5, x: 0, y: 2)
            )




            Image("masterball")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 70)
                .background(
                    Image("pokeball")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 80)
                        .padding()
                        .clipped()
                        .foregroundColor(.white.opacity(0.3))

                )
                .padding(.trailing, 10)
        }
    }
    
}
