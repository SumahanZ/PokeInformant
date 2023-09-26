//
//  PokemonType.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 25/09/23.
//

import Foundation
import UIKit


enum PokemonType: String  {
    case bug
    case dark
    case dragon
    case electric
    case fairy
    case fighting
    case fire
    case flying
    case ghost
    case grass
    case ground
    case ice
    case normal
    case poison
    case psychic
    case rock
    case steel
    case water

    //var typeIcons

    //var typeColors
    var typeColor: UIColor {
        switch self {
        case .bug:
            return UIColor(hexString: "#A6B91A")
        case .dark:
            return UIColor(hexString: "#705746")
        case .dragon:
            return UIColor(hexString: "#6F35FC")
        case .electric:
            return UIColor(hexString: "#F7D02C")
        case .fairy:
            return UIColor(hexString: "#D685AD")
        case .fighting:
            return UIColor(hexString: "#C22E28")
        case .fire:
            return UIColor(hexString: "#EE8130")
        case .flying:
            return UIColor(hexString: "#A98FF3")
        case .ghost:
            return UIColor(hexString: "#735797")
        case .grass:
            return UIColor(hexString: "#7AC74C")
        case .ground:
            return UIColor(hexString: "#E2BF65")
        case .ice:
            return UIColor(hexString: "#96D9D6")
        case .normal:
            return UIColor(.gray.opacity(0.8))
        case .poison:
            return UIColor(hexString: "#A33EA1")
        case .psychic:
            return UIColor(hexString: "#F95587")
        case .rock:
            return UIColor(hexString: "#B6A136")
        case .steel:
            return UIColor(hexString: "#B7B7CE")
        case .water:
            return UIColor(hexString: "#6390F0")
        }
    }

    //var weaknesses, advantages
}
