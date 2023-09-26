//
//  PokedexView.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 25/09/23.
//

import SwiftUI
import SegmentedPicker

enum PokedexFilterOptions {
    case pokemon, move, region, item
}

struct PokedexView: View {
    @State private var isAnimating: Bool = false
    @State private var searchText: String = ""
    @State var selectedIndex: Int?
    private let filterOptions: [String] = ["Pokemons", "Moves", "Regions", "Items"]
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                VStack {
                    topSection
                    middleSection
                }
                .frame(maxHeight: .infinity, alignment: .top)
                
                FilterFloatingButton()
                    .background {
                        FilterFloatingButtonAnimation(isAnimating: $isAnimating)
                    }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}

extension PokedexView {
    private var topSection: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 30) {
                Group {
                    Text("Pokedex")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    TextField("", text: $searchText)
                        .placeholder(when: searchText.isEmpty, placeholder: {
                            Text("Search for a Pokemon, Abilities, Moves...")
                        })
                        .autocorrectionDisabled()
                        .font(.caption)
                        .fontWeight(.medium)
                        .padding(.leading, 40)
                        .padding(.vertical, 15)
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(.black.opacity(0.6), lineWidth: 2)
                        )
                        .overlay(
                            Image(systemName: "magnifyingglass")
                                .padding(15)
                            , alignment: .leading)
                        .overlay(
                            Image(systemName: "xmark")
                                .padding(.trailing, 20)
                                .opacity(searchText.isEmpty ? 0 : 1)
                                .contentShape(Rectangle())
                                .onTapGesture { searchText = "" }
                                .animation(.easeInOut, value: searchText)
                            , alignment: .trailing
                        )
                }
                .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(height: UIScreen.main.bounds.height * 0.20, alignment: .top)
    }
    
    private var middleSection: some View {
        VStack {
            SegmentedPicker(
                filterOptions,
                selectedIndex: Binding(
                    get: { selectedIndex },
                    set: {
                        selectedIndex = $0
                        isAnimating.toggle()
                    }),
                selectionAlignment: .bottom,
                content: { item, isSelected in
                    Text(item)
                        .foregroundColor(isSelected ? Color.black : Color.gray )
                        .padding(.horizontal, 15)
                        .padding(.vertical, 8)
                        .font(.callout)
                },
                selection: {
                    VStack(spacing: 0) {
                        Spacer()
                        Color.red.frame(height: 3)
                    }
                })
            .fontWeight(.semibold)
            .onAppear {
                selectedIndex = 0
            }
            .animation(.spring(blendDuration: 0.3), value: selectedIndex)
            
            PokedexGrid(selectedTab: .pokemon)
        }
    }
}


