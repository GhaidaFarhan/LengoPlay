//
//  Noun.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/6/24.
//

import SwiftUI

struct Noun: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width:500)
                
//                NavigationLink{
//                   Level()
//                }label: {
//                    Label("", systemImage: "house.fill")
//                }
                
                VStack{
                    DragAndDrop(dropping: .imageOne)
                    
                    HStack{
                        NavigationLink{
                            Basic()
                        }label: {
                            Image(systemName: "arrowshape.backward.circle")
                                .resizable()
                                .frame(width:30, height: 30)
                        }
                        NavigationLink{
                            Noun2()
                        }label: {
                           Image( systemName: "arrowshape.forward.circle")
                                .resizable()
                                .frame(width:30, height: 30)
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Noun()
}
