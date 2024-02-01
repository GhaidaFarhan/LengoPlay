//
//  Level.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 1/30/24.
//

import SwiftUI

struct Level: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width:500)
                VStack(spacing: 100){
                    NavigationLink{
                        Basic()
                    }label:{
                        Label("Basics",systemImage: "")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 70))
                            .frame(width:240,height:70)
                            .padding(20)
                            .foregroundColor(.ourBegie)
                            .background(Color.ourGreen)
                            .cornerRadius(19)
                    }
                    NavigationLink{
                        Stories()
                    }label:{
                        Label("Stories",systemImage: "")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 70))
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

#Preview {
    Level()
}
