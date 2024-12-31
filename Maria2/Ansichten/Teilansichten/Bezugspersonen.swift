//
//  Bezugspersonen.swift
//  Maria2
//
//  Created by Arkadiusz Paluszek on 31.12.24.
//

import SwiftUI

struct Bezugspersonen: View {
    
    var body: some View {
        
        // Das Blatt wird untergebracht in einer Tabelle mit drei Spalten, in der mittleren Spalte werden die einzelnen Elemente dargestellt
        ScrollView {
            HStack {
                // Linker Bildschirmrand
                Spacer(minLength: 10)
                VStack {
                    // Zentraler Bereich
                    
                }
                // Rechter Bildschirmrand
                Spacer(minLength: 10)
            }
        }
    }
}

struct Bezugspersonen_Previews: PreviewProvider {
    @State static var selectedKundeID: Int64 = 0
    static var previews: some View {
        Bezugspersonen()
    }
}
