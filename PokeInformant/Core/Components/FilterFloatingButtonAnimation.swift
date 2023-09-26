//
//  FilterFloatingButtonAnimation.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 26/09/23.
//

import SwiftUI

//Circle()
//    .stroke(lineWidth: 5.0)
//    .scale(animate ? 1.0 : 0.0)
//    .opacity(animate ? 0.0 : 1.0)
//    .animation(animate ? Animation.easeOut(duration: 1.0) : nil, value: animate)

struct FilterFloatingButtonAnimation: View {
    //TODO: Animate radiating effect and navigate after 2 seconds
    @Binding var isAnimating: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .scale(isAnimating ? 1 : 0)
            .opacity(isAnimating ? 0 : 1)
            .animation(isAnimating ? Animation.easeInOut(duration: 1) : nil, value: isAnimating)
    }
}

struct FilterFloatingButtonAnimation_Previews: PreviewProvider {
    static var previews: some View {
        FilterFloatingButtonAnimation(isAnimating: .constant(true))
    }
}
