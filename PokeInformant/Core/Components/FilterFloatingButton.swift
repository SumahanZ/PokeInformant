//
//  FilterFloatingButton.swift
//  PokeInformant
//
//  Created by Kevin Sander Utomo on 26/09/23.
//

import SwiftUI

struct FilterFloatingButton: View {
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "slider.horizontal.3")
                .font(.title.weight(.semibold))
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .shadow(radius: 4, x: 0, y: 4)
        }
        .padding()
    }
}

struct FilterFloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterFloatingButton()
    }
}
