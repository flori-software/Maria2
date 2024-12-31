//
//  Stammblatt.swift
//  Maria2
//
//  Created by Arkadiusz Paluszek on 28.12.24.
//


import SwiftUI

struct Stammblatt: View {
   
    var body: some View {
        
        // Das Blatt wird untergebracht in einer Tabelle mit drei Spalten, in der mittleren Spalte werden die einzelnen Elemente dargestellt
        ScrollView {
            HStack {
                // Linker Bildschirmrand
                Spacer(minLength: 10)
                VStack {
                    // Zentraler Bereich
                    RoundedVStack(backgroundColor: Color("peachpuff")) {
                        // Name, Geschlecht, Geburtsdatum und Erstaufnahmedatum
                        
                        // Stammdaten
                        HStack {
                            Text("Kurzbezeichnung")
                                .bogenLabel()
                            Spacer()
                            Text("Peter Parker")
                            Spacer()
                        }
                        
                        HStack {
                            Text("Name")
                                .bogenLabel()
                            Text("Parker")
                            Spacer()
                            Text("Vorname")
                                .bogenLabel()
                            Text("Peter")
                            Spacer()
                        }
                        
                        HStack {
                            Text("Geschlecht")
                                .bogenLabel()
                            /*
                             if(selectedKunde.geschlecht == "m") {
                             Text("männlich")
                             } else if(selectedKunde.geschlecht == "w") {
                             Text("weiblich")
                             }
                             */
                            Text("männlich")
                            Spacer()
                        }
                        
                        HStack {
                            /*
                             if(selectedKunde.geburtsdatum != "0000-00-00" && selectedKunde.geburtsdatum != "") {
                             Text("Geburtsdatum")
                             .bogenLabel()
                             Text(convertDateString(selectedKunde.geburtsdatum) ?? "")
                             Spacer()
                             }
                             */
                            Text("Geburtsdatum")
                                .bogenLabel()
                            Text("05.02.1975")
                            Spacer()
                        }
                        
                        HStack {
                            /*
                             if(selectedKunde.erstaufnahmedatum != "0000-00-00" && selectedKunde.erstaufnahmedatum != "") {
                             Text("Erstaufnahmedatum")
                             .bogenLabel()
                             Text(convertDateString(selectedKunde.erstaufnahmedatum) ?? "")
                             Spacer()
                             }
                             */
                            Text("Erstaufnahmedatum")
                                .bogenLabel()
                            Text("01.01.2025")
                            Spacer()
                        }
                        Spacer(minLength: 10)
                    }
                    
                    
                    // Kontaktdaten
                    RoundedVStack(backgroundColor: Color("linen")) {
                        /*
                         if selectedKunde.strasse! != "" || selectedKunde.plz! != "" || selectedKunde.ort! != "" {
                         HStack {
                         Text("\(selectedKunde.strasse!)\n\(selectedKunde.plz!) \(selectedKunde.ort!)")
                         Spacer()
                         }
                         }
                         */
                        HStack {
                            Text("Neustadter Str. 48 \n 12345 Musterstadt")
                            Spacer()
                        }
                        /*
                         if selectedKunde.telefonnummer! != "" {
                         HStack {
                         Image(systemName: "phone.connection")
                         Text(selectedKunde.telefonnummer!)
                         Spacer()
                         }
                         }*/
                        HStack {
                            Image(systemName: "phone.connection")
                            Text("0176 642 755 72")
                            Spacer()
                        }
                        /*
                         if selectedKunde.telefonnummer2! != "" {
                         HStack {
                         Image(systemName: "phone.connection")
                         Text(selectedKunde.telefonnummer2!)
                         Spacer()
                         }
                         }
                         */
                        HStack {
                            Image(systemName: "phone.connection")
                            Text("0176 808 10 443")
                            Spacer()
                        }
                        /*
                         if selectedKunde.mobil! != "" {
                         HStack {
                         Image(systemName: "iphone.radiowaves.left.and.right")
                         Text(selectedKunde.mobil!)
                         Spacer()
                         }
                         }
                         */
                        HStack {
                            Image(systemName: "iphone.radiowaves.left.and.right")
                            Text("0176 619 35 651")
                            Spacer()
                        }
                        /*
                         if selectedKunde.mobil2! != "" {
                         HStack {
                         Image(systemName: "iphone.radiowaves.left.and.right")
                         Text(selectedKunde.mobil2!)
                         Spacer()
                         }
                         }
                         */
                        HStack {
                            Image(systemName: "iphone.radiowaves.left.and.right")
                            Text("0160 918 47 365")
                            Spacer()
                        }
                        /*
                         if selectedKunde.email! != "" {
                         HStack {
                         Image(systemName: "envelope")
                         Text(selectedKunde.email!)
                         Spacer()
                         }
                         }
                         */
                        HStack {
                            Image(systemName: "envelope")
                            Text("arkadiuszpaluszek@icloud.com")
                            Spacer()
                        }
                        /*
                         if selectedKunde.fax! != "" {
                         HStack {
                         Image(systemName: "faxmachine")
                         Text(selectedKunde.fax!)
                         Spacer()
                         }
                         }
                         */
                        HStack {
                            Image(systemName: "faxmachine")
                            Text("09561 123456")
                            Spacer()
                        }
                        
                    }
                    
                    // Weitere Info
                    RoundedVStack(backgroundColor: Color("peachpuff")) {
                        HStack {
                            Text("Dokumentation angelegt")
                                .bogenLabel()
                            Text(transform1toYes(number: "1"))
                            Spacer()
                        }
                        // Krankenkasse und Versicherungsnummer werden ausgelassen, weil in der mobilen App unerheblich
                        HStack {
                            Text("Hausarzt")
                                .bogenLabel()
                            Text("Dr. House")
                            Spacer()
                        }
                        HStack {
                            Text("Gesetzlicher Betreuer")
                                .bogenLabel()
                            Text("Mr. Xaver")
                            Spacer()
                        }
                        HStack {
                            Text("Pflegegrad")
                                .bogenLabel()
                            /*
                             if(selectedKunde.pflegegrad_datum! != "") {
                             Text("\(selectedKunde.pflegegrad ?? "") festgestellt am \(convertDateString(selectedKunde.pflegegrad_datum) ?? "")")
                             } else {
                             Text("\(selectedKunde.pflegegrad ?? "")")
                             }
                             */
                            Text("3")
                            Spacer()
                        }
                        HStack {
                            Text("Behindertenausweis")
                                .bogenLabel()
                            Text(transformNothingToKeineAngabe(angabe: "ja"))
                            Spacer()
                        }
                        HStack {
                            Text("Begleitperson")
                                .bogenLabel()
                            Text(transformNothingToKeineAngabe(angabe: "ja"))
                            Spacer()
                        }
                        HStack {
                            Text("Wertmarke")
                                .bogenLabel()
                            Text(transformNothingToKeineAngabe(angabe: "nein"))
                            Spacer()
                        }
                        HStack {
                            Text("Grad der Behinderung")
                                .bogenLabel()
                            Text(transformNothingToKeineAngabe(angabe: "100%"))
                            Spacer()
                        }
                    }
                    
                    // Körpermaße
                    RoundedVStack(backgroundColor: Color("linen")) {
                        HStack {
                            Text("Körpermaße")
                                .bogenLabel()
                            Image(systemName: "arrow.up.and.person.rectangle.portrait")
                                .font(.system(size: 24))
                            Text("183 cm")
                            Image(systemName: "figure.strengthtraining.traditional")
                                .font(.system(size: 24))
                            Text("86 kg")
                            Spacer()
                        }
                    }
                    
                    // Entfernung und Fahrtzeit
                    RoundedVStack(backgroundColor: Color("peachpuff")) {
                        HStack {
                            Image(systemName: "car")
                            Text("einfache Entfernung in km: ")
                                .bogenLabel()
                            Text(String(format: "%.2f", 18))
                            Spacer()
                        }
                        HStack {
                            Image(systemName: "clock.arrow.2.circlepath")
                            Text("Fahrtzeit Std.:")
                                .bogenLabel()
                            Text("00")
                            Text("Min.:")
                                .bogenLabel()
                            Text("10")
                            Spacer()
                        }
                    }
                    
                    // Link zum Navi
                    HStack {
                        Text("Zeige es mir im Navi:")
                        
                        // Apple Mapos
                        Button(action: {
                            //openMapsForDirections(strasse: selectedKunde.strasse!, plz: selectedKunde.plz!, ort: selectedKunde.ort!)
                        }, label: {
                            HStack {
                                Text("Apple Maps")
                                Image(systemName: "map.circle.fill")
                                    .font(.system(size: 30))
                            }
                            
                        })
                        
                        // Google Maps
                        Button(action: {
                            /*
                             var linkNavi: String = ""
                             if selectedKunde.link_routenplaner! != "" {
                             linkNavi = selectedKunde.link_routenplaner!
                             } else {
                             linkNavi = "\(selectedKunde.strasse ?? ""), \(selectedKunde.plz ?? ""), \(selectedKunde.ort ?? "")"
                             }
                             openGoogleMapsForAddress(address: linkNavi)
                             */
                        }, label: {
                            HStack {
                                Text("Google Maps")
                                Image(systemName: "map.circle")
                                    .font(.system(size: 30))
                            }
                            
                        })
                    }
                    
                    // Geschwister, Familie und Fotos
                    RoundedVStack(backgroundColor: Color("linen")) {
                        VStack {
                            HStack {
                                Image(systemName: "person.crop.circle.dashed.circle")
                                Text("Freiheitsentziehende Maßnahmen:")
                                    .bogenLabel()
                                Spacer()
                            }
                            HStack {
                                Text("Medikamnetöse Ruhigstellung und Fixierung durch Spinnweben")
                                Spacer()
                            }
                            
                        }
                    }
                    
                    // FeM und Erlaubnis Foto
                    RoundedVStack(backgroundColor: Color("peachpuff")) {
                        HStack {
                            Image(systemName: "figure.roll")
                            Text("Vom Kunden benutzte Hilfsmittel")
                                .bogenLabel()
                            Spacer()
                        }
                        
                        HStack {
                            //Text(removeHTMLTags(from: selectedKunde.fem!))
                            Text("Spinnwebenschußgrät, bunte Verkleidung, komische Gesichtsmaske")
                            Spacer()
                        }
                    }
                    
                    // Fotoerlaubnis
                    RoundedVStack(backgroundColor: Color("linen")) {
                        HStack {
                            Image(systemName: "photo.stack")
                            Text("Dürfen Fotos gemacht werden?")
                                .bogenLabel()
                            
                            Spacer()
                        }
                        HStack {
                            Text("Ja. Einverständnis erteilt durch Mutter am 31.12.2024")
                            Spacer()
                        }
                    }
                    
                    // Schwimmerlaubnis
                    RoundedVStack(backgroundColor: Color("peachpuff")) {
                        HStack {
                            Image(systemName: "figure.open.water.swim")
                            Text("Schwimmerlaubnis")
                                .bogenLabel()
                            Spacer()
                        }
                        
                        HStack {
                            //Text(removeHTMLTags(from: selectedKunde.fem!))
                            Text("Erteilt. Braucht ein Schwimmbrett")
                            Spacer()
                        }
                    }
                    
                    // Bogen erstellt am ... und aktualisiert am...
                    RoundedVStack(backgroundColor: Color("peachpuff")) {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Bogen ertsllt am")
                                .bogenLabel()
                            Text("23.12.2024 von Arkadiusz Paluszek")
                            Spacer()
                        }
                        
                        HStack {
                            Image(systemName: "calendar.circle")
                            
                            Text("Bogen aktualisiert am")
                                .bogenLabel()
                            Text("31.12.2024 von Arkadiusz Paluszek")
                            Spacer()
                        }
                    }
                }
                
                // Rechter Bildschirmrand
                Spacer(minLength: 10)
                
            }
        }
    }
    
}

struct Stammblatt_Previews: PreviewProvider {
    @State static var selectedKundeID: Int64 = 0
    static var previews: some View {
        Stammblatt()
    }
}

struct RoundedVStack<Content: View>: View {
    let content: Content
    let backgroundColor: Color
    let cornerRadius: CGFloat
    let spacing: CGFloat
    let padding: EdgeInsets
    
    init(
        backgroundColor: Color = Color.yellow,
        cornerRadius: CGFloat = 20,
        spacing: CGFloat = 20,
        padding: EdgeInsets = EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10),
        @ViewBuilder content: () -> Content
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.spacing = spacing
        self.padding = padding
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: spacing) {
            content
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(padding)
        .background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(backgroundColor)
        )
    }
}

extension View {
    func bogenLabel() -> some View {
        if #available(iOS 16.0, *) {
            return self
                .bold()
                .padding(3)
                //.background(Color(red: 250/255, green: 235/255, blue: 215/255))
                .background(Color("antiquewhite"))
                .cornerRadius(5)
                
        } else {
            return self
        }
    }
}

func transform1toYes(number: String?) -> String {
    var answer: String = ""
    if(number == "1") {
        answer = "ja"
    } else if (number == "0"){
        answer = "nein"
    } else {
        answer = "keine Angabe"
    }
    return answer
}

func transformNothingToKeineAngabe(angabe: String?)->String {
    var answer: String = "";
    if angabe == "ja" {
        answer = "ja"
    } else if angabe == "nein" {
        answer = "nein"
    } else {
        answer = "keine Angabe"
    }
    return answer
}
