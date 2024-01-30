//
//  SlowPrint.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 1/30/24.
//
import SwiftUI
struct SlowPrint: View {
    let printedText: String
    @State private var displayedText: String = ""
    var body: some View {
        VStack{
            Text(displayedText)
        }
        .onAppear {
            SlowPrinter()
        }
    }
        func SlowPrinter () {
            var iterator = printedText.makeIterator()
            
            Timer.scheduledTimer(withTimeInterval: 0.10, repeats: true) {timer in
                if let nextCharacter = iterator.next() {
                    displayedText.append(nextCharacter)
                }else {
                    timer.invalidate()
                }
                
            }
        }
    }


#Preview {
    SlowPrint(printedText: "")
}

