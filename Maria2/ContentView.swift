//
//  ContentView.swift
//  Maria2
//
//  Created by Arkadiusz Paluszek on 26.12.24.
//

import SwiftUI

struct ContentView: View {
    // Der Zustand, der den ausgewählten Wert speichert
        @State private var selectedOption: String = "Stammblatt"
        
        // Liste der Optionen, die im Picker angezeigt werden
    let options = ["Stammblatt", "Bezugspoersonen", "Betreuende Einrichtungen", "Behinderung", "Medizinische Informationen",]
        
        var body: some View {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Hello, world!")
                
                // Picker für die Auswahl der Optionen
                Picker("Wählen Sie eine Option", selection: $selectedOption) {
                    ForEach(options, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(SegmentedPickerStyle()) // Segmented Picker für eine übersichtliche Darstellung
                .padding()
                
                // Zeige unterschiedliche Views basierend auf der Auswahl
                Spacer()
                switch selectedOption {
                case "Stammblatt":
                    Stammblatt()
                case "Bezugspoersonen":
                    Text("Bezugspersonen")
                    //BezugspoersonenView()
                case "Medikamente":
                    Text("Medikamente")
                    //MedikamenteView()
                default:
                    Text("Wählen Sie eine Option")
                }
            }
            .padding()
        }
}

#Preview {
    ContentView()
}
