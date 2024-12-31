//
//  BackButton.swift
//  Maria2
//
//  Created by Arkadiusz Paluszek on 28.12.24.
//

import SwiftUI

struct BackButton: View {
    
    @Environment(\.colorScheme) var colorScheme // Zugriff auf das Farbschema
    
    var body: some View {
        // Begrüßung und ZURÜCK-Button
        HStack {
            Spacer()
                .frame(width: 20)
            Text("Hallo Benutzer")
                .padding(5)
            Spacer()
            Button(action: {
               // Die Aktion wird hier die Rückkehr ins Hauptmenu sein
                
            }, label: {
                Text("ZURÜCK")
                    .padding(5)
                    .foregroundColor(textColor) // Verwende die definierte textColor
            })
            Spacer()
                .frame(width: 20)
        }
    }
    
    var textColor: Color {
        if colorScheme == .dark { // Überprüfe das Farbschema auf Nachtmodus (.dark)
            return .white // Weiß für Nachtmodus
        } else {
            return .black // Schwarz für Tagesmodus
        }
    }
}


struct BackButton_Previews: PreviewProvider {

    static var previews: some View {
        BackButton()
    }
}
