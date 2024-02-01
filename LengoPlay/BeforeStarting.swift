//
//  BeforeStarting.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 1/30/24.
//

import SwiftUI

struct BeforeStarting: View {
    let languages = ["Arabic","Bengali","",""]
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .ignoresSafeArea()
                .frame(width: 500)
            
            VStack(spacing: 20) {
                Text("Before you start...")
                    .font(Font.custom("Merriweather-BoldItalic", size: 30))
                    .foregroundColor(.ourBlue)
                
                Text("Select your language:")
                    .font(Font.custom("Merriweather-BoldItalic", size: 30))
                    .foregroundColor(.ourBlue)
                
                HStack {
                    ZStack {
                        Text("Language")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 30))
                            .frame(width: 330, height: 20)
                            .foregroundColor(.ourBegie)
                            .padding(20)
                            .background(Color.ourGreen)
                            .cornerRadius(10)
                    
                        HStack {
                        Spacer()
                            Image(systemName: "chevron.right")
                                .font(Font.system(size: 30))
                                .foregroundColor(.ourBlue)
                                .padding(.trailing, 10)
                        }
                    }
                }
                .padding(.bottom, 20)
                
                Spacer()
                
                Label("Next..", systemImage: "")
                    .font(Font.custom("AkayaTelivigala-Regular", size: 40))
                    .frame(width: 200, height: 50)
                    .padding(20)
                    .foregroundColor(.ourBegie)
                    .background(Color.ourGreen)
                    .cornerRadius(19)
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
        BeforeStarting()
    }
}
