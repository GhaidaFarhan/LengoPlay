//
//  Basic.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 1/30/24.
//

import SwiftUI

struct Basic: View {
    let views = ["Nouns", "Verbs" ,"Prefixes", "Adjectives", "Quiz"]
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 500)
                let columns = [
                    GridItem(.fixed((UIScreen.main.bounds.width / 2) - 20)),
                    GridItem(.fixed((UIScreen.main.bounds.width / 2) - 20))
                ]
                LazyVGrid(columns: columns){ForEach(views, id: \.self){ allViews in
                    NavigationLink(destination: basicsView(allViews)){
                        
                        Label(allViews.capitalized,systemImage: "")
                            .font(Font.custom("AkayaTelivigala-Regular", size: 35))
                            .frame(width:130,height:170)
                            .padding(20)
                            .foregroundColor(.ourBegie)
                            .background(Color.ourGreen)
                            .cornerRadius(19)
                    }
                }.padding()
                }
            }
//            @ViewBuilder
            // viewbuilder lets our function have an unknown (at compile time) return type.
            // you dont need a return statement if you use @viewbuilder
            //
        }
    }
    func basicsView(_ content: String) -> some View {
        switch content {
        case "Nouns":
            return AnyView(Noun())
        case "Verbs":
            return AnyView(Verb())
        case "Prefixes":
            return AnyView(Prefixes())
        case "Adjectives":
            return AnyView(Adjectives())
        case "Quiz":
            return AnyView(Quiz())
        default:
            return AnyView(EmptyView())
        }
    }

}

#Preview {
    Basic()
}
