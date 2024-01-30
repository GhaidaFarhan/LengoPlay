//
//  ContentView.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 1/30/24.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width:500)
                VStack(spacing: 60){
                    SlowPrint(printedText: "WELCOME")
                        .font(Font.custom("Merriweather-BoldItalic", size: 60))
                        .foregroundColor(.ourBlue)
                    
                    Text("Ready to level-up?")
                        .font(Font.custom("AkayaTelivigala-Regular", size: 27))
                        .foregroundColor(.ourBlue)
                    
                    NavigationLink{
                        BeforeStarting()
                        
                    } label: {
                        Label("Let's go!",systemImage: "")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 50))
                            .frame(width:240,height:70)
                            .padding(20)
                            .foregroundColor(.ourBegie)
                            .background(Color.ourGreen)
                            .cornerRadius(19)
                            
                        
                    }
                    
                    
                    
                    
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
