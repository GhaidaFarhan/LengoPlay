//
//  Stories.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/1/24.
//

import SwiftUI

enum Country: CaseIterable{
    case Japan, Korea, Mexico ,Yemen , Bangladish, USA, France
}

struct Stories: View {
    @State var countries: Country
    @State var yourName: String = ""
    @State var yourFriendsName: String = ""
    @State var yourFriendsName2: String = ""
    @State var showingAlert = false
    var body: some View {
            
                NavigationStack {
                    
                    ZStack{
                        
                    Image("Background")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(width:500)
                        
                    VStack{
                        Text("STORIES")
                            .font(Font.custom("Merriweather-BoldItalic", size: 50))
                            .foregroundColor(.ourBlue)
                        
                        HStack {
                            
                            Form {
                                
                                Section {
                                    Picker("Country" , selection: $countries){
                                        ForEach(Country.allCases, id: \.self)
                                        { countryy in
                                            Text("\(countryy)".capitalized).tag(countryy)}
                                        .font(Font.custom("AkayaTelivigala-Regular", size: 40))
                                        
                                    }
                                } // listRowBackgroun change the background of the picker
                                .listRowBackground(Color.ourGreen)
                                .foregroundColor(.ourBegie)
                                .padding(1)
                                .cornerRadius(10)
                                
                            }
                            
                            
                            .scrollContentBackground(.hidden)
                     
                        }.padding()
                        ScrollView{
                            VStack(alignment:.leading){
                                
                                Text("    Type your Name:")
                                    .font(Font.custom("Merriweather-BoldItalic", size: 20))
                                    .foregroundColor(.ourBlue)
                                TextField(
                                    "Your Name",
                                    text: $yourName
                                    
                                ).padding(12)
                                    .background(.ourGreen)
                                    .foregroundColor(.ourBegie)
                                    .cornerRadius(10)
                                    .padding()
                                    .disableAutocorrection(true)
                                
                                
                                Text("    Type Two Names :")
                                    .font(Font.custom("Merriweather-BoldItalic", size: 20))
                                    .foregroundColor(.ourBlue)
                                TextField(
                                    "1. Friend's Name",
                                    text: $yourFriendsName
                                    
                                )  .padding(12)
                                    .background(.ourGreen)
                                    .foregroundColor(.ourBegie)
                                    .cornerRadius(10)
                                    .padding()
                                    .disableAutocorrection(true)
                                TextField(
                                    "2. Friend's Name",
                                    text: $yourFriendsName2
                                    
                                )  .padding(12)
                                    .background(.ourGreen)
                                    .foregroundColor(.ourBegie)
                                    .cornerRadius(10)
                                    .padding()
                                    .disableAutocorrection(true)
                                
                                Text("These Names will be in the story!")
                                    .font(Font.custom("Merriweather-BoldItalic", size: 13))
                                    .foregroundColor(.ourBlue)
                                    .padding()
                            }
                        }.padding(27)
                            
                        NavigationLink(destination: StoryContent(selectedLanguage: .constant(.Arabic), yourName: $yourName, yourFriendsName: $yourFriendsName,yourFriendsName2: $yourFriendsName2), isActive: $showingAlert){
                      
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
//                                .font(.custom("PTSerif-Italic", size: 18))
                                .frame(width: 50,height: 40)
                                
                                .foregroundColor(.ourBlue)
                               
                                .cornerRadius(5)
                           
                        }
                        .alert(isPresented: $showingAlert){
                            Alert(
                                       title: Text("In this game at some point you will have to make your own decision to complete your advanture! GOOD LUCK! ")
                                       
                                        .font(Font.custom("AkayaTelivigala-Regular", size: 60))
                                   )
                            
                           
                         
                        }   .foregroundColor(.red)
                    }.padding()
                    
                    }
                }
            }
    }


#Preview {
    Stories(countries: .Japan)
}
