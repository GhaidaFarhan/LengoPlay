//
//  SpeLevel.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/6/24.
//

import SwiftUI
// SpeLevel = Specific Level
struct SpeLevel: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width:500)
                VStack{
                    NavigationLink{
                        Basic()
                    }label:{
                        Label("Beginner",systemImage: "")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 60))
                            .frame(width:270,height:70)
                            .padding(20)
                            .foregroundColor(.ourBegie)
                            .background(Color.ourGreen)
                            .cornerRadius(19)
                    }.padding(40)
                    NavigationLink{
                        Basic()
                    }label:{
                        Label("Intermediate",systemImage: "")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 50))
                            .frame(width:270,height:70)
                            .padding(20)
                            .foregroundColor(.ourBegie)
                            .background(Color.ourGreen)
                            .cornerRadius(19)
                    }.padding(40)
                    NavigationLink{
                        Basic()
                    }label:{
                        Label("Advanced",systemImage: "")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 60))
                            .frame(width:270,height:70)
                            .padding(20)
                            .foregroundColor(.ourBegie)
                            .background(Color.ourGreen)
                            .cornerRadius(19)
                    }.padding(40)
                }
            }
        }
    }
}

#Preview {
    SpeLevel()
}
