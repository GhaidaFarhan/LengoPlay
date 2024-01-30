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
        ZStack{
            Image("Background")
                .resizable()
                .ignoresSafeArea()
                .frame(width:500)
            VStack{
                SlowPrint(printedText: "WELCOME")
                    .font(Font.custom("Merriweather-BoldItalic", size: 60))
                    .foregroundColor(.ourBlue)
            }
            
            
            
          
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
