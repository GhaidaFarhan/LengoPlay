//
//  StoryContent.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/9/24.
//

import SwiftUI


struct StoryContent: View {
    @State private var showTranslation = false
    @Binding  var selectedLanguage: Native
    @State var selectedPicker : String = ""
    var selectionOptions = ["Turn Left","Go Forward","Turn Right"]
    @Binding  var yourName: String
    @Binding  var yourFriendsName: String
    @Binding  var yourFriendsName2: String
    @State private var showinAlert = false
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .ignoresSafeArea()
                .frame(width: 500)
            
            ScrollView {
                VStack {
                    HStack {
                        Divider()
                            .frame(width: 38, height: 3)
                            .overlay(Color.ourBlue)
                        
                        Text(" MYSTERY TRIP ")
                            .font(Font.custom("ProtestRevolution-Regular", size: 50))
                            .foregroundColor(Color.ourBlue)
                        
                        Divider()
                            .frame(width: 38, height: 3)
                            .overlay(Color.ourBlue)
                    }
                    
                    VStack(alignment: .center) {
                        let originalLines = originalText().components(separatedBy: "\n")
                        let translatedLines = selectedLanguage.translateText.components(separatedBy: "\n")
                        
                        ForEach(0..<max(originalLines.count, translatedLines.count), id: \.self) { index in
                            HStack {
                                VStack{
                                    Text(originalLines.indices.contains(index) ? originalLines[index] : "")
                                        .font(Font.custom("Merriweather-BoldItalic", size: 20))
                                        .foregroundColor(Color.ourBlue)
                                        .padding(8)
                                    
                                    if showTranslation {
                                        Text(translatedLines.indices.contains(index) ? translatedLines[index] : "")
                                            .font(Font.custom("Merriweather-BoldItalic", size: 20))
                                            .foregroundColor(Color.ourBlue)
                                            .padding(8)
                                    }
                                }
                            }
                        }
                    }.padding(60)
                    VStack{
                        
                        Text("Chose The Dirction To Continue..")
                            .font(Font.custom("ProtestRevolution-Regular", size: 25))
                            .foregroundColor(Color.ourYellow)
                        
                        Picker("Picker Name",
                               selection: $selectedPicker) {
                            ForEach(selectionOptions,id: \.self) {
                                Text($0)
                                    .font(Font.custom("ProtestRevolution-Regular", size: 25))
                                    .foregroundColor(Color.red)
                                
                                
                            }
                        }.pickerStyle(.inline)
                        
                        
                    }
                    .alert(isPresented: .constant(selectedPicker == "Turn Left" || selectedPicker == "Turn Right")) {
                                   Alert(
                                       title: Text("HOPE YOU DONT REGRET THIS DECISION...")
                                        ,
                                       message: nil,
                                       dismissButton: .default(Text("OK"))
                                   )
                    }

                }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Toggle(isOn: $showTranslation, label: {
                            Text("Translate")
                        })
                    }
                }
                
            }
        }
        func originalText() -> String {
            return """
        Once upon a time, in a land filled with endless possibilities, a group of friends embarked on a mystery trip. With no destination in mind and the spirit of adventure in their hearts, \(yourName), \(yourFriendsName), and \(yourFriendsName2) set out into the unknown. Each turn they took was a leap of faith, every path chosen a new story waiting to unfold. Surprises awaited at every corner, from hidden waterfalls to secret glades where the sun danced through the leaves. Laughter and joy were their constant companions as they discovered places untouched by time and treasures that maps could not reveal. This journey was not just about the places they found, but about the memories they created, the bonds they strengthened, and the sheer thrill of embracing the unexpected. As dawn broke on the fifth day, the friends reached a crossroads, each path veiled in mist, each whispering of different fates.
        """
        }
    }





#Preview {
    StoryContent(selectedLanguage: .constant(.Arabic), yourName: .constant("Cory"), yourFriendsName: .constant("Cory"), yourFriendsName2: .constant("Cory"))
}
