//
//  BeforeStarting.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 1/30/24.
//

import SwiftUI

struct BeforeStarting: View {
   @State var languages : Native
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 500)
                
                VStack(spacing: 20) {
                    Text("Before you start...")
                        .font(Font.custom("Merriweather-BoldItalic", size: 20))
                        .foregroundColor(.ourBlue)
                    
                        .padding(50)
                    
                    Text("Select your native language:")
                        .font(Font.custom("Merriweather-BoldItalic", size: 28))
                        .foregroundColor(.ourBlue)
                    
                    HStack {
                        ZStack {
                            
                            Form {
                                
                                Section {
                                    Picker("Language" , selection: $languages){
                                        ForEach(Native.allCases, id: \.self)
                                        {native in
                                            Text("\(native)".capitalized).tag(native)}
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
                        
                        
                    }.padding()
                    
                    .padding(.bottom, 20)
                    
                    Spacer()
                    NavigationLink{
                        Level()
                    }label:{Label("Next..", systemImage: "")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 40))
                            .frame(width: 200, height: 50)
                            .padding(20)
                            .foregroundColor(.ourBegie)
                            .background(Color.ourGreen)
                            .cornerRadius(19)
                    }
                }.padding(12)
            }
        }
        }
    }


struct NextView: View {
    var body: some View {
        Text("Next View")
    }
}

struct BeforeStarting_Previews: PreviewProvider {
    static var previews: some View {
        BeforeStarting(languages: .Arabic)
    }
}
