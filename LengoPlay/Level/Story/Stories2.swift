//
//  Stories2.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/14/24.
//

import SwiftUI

struct Stories2: View {
    
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
                            .frame(width: 70, height: 3)
                            .overlay(Color.ourBlue)
                        
                        Text(" Following ")
                            .font(Font.custom("ProtestRevolution-Regular", size: 50))
                            .foregroundColor(Color.ourBlue)
                        
                        Divider()
                            .frame(width: 70, height: 3)
                            .overlay(Color.ourBlue)
                    }
                }
            }
        }
    }
}

#Preview {
    Stories2()
}
