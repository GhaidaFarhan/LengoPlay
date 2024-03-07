//
//  Picker.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/2/24.
//

import SwiftUI

struct Picker: View {
    @State var languages : Native
    var body: some View {
        VStack{
            Form {
           Section {
               Picker("Appearance", selection: $languages) {
                   ForEach(Native, id: \.self) {lang in
                       
                       Text(la)
                                   }
                               }
                           }
                       }
            
        }
    }
}

#Preview {
    Picker(languages: .Arabic)
}
