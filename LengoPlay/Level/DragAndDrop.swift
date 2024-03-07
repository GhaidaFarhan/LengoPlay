//
//  DragAndDrop.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/7/24.
//

import ConfettiSwiftUI
import SwiftUI
import Observation


@Observable class GameManager {
    var gameOptions:[MatchingWords] = [
        MatchingWords(image: .imageOne),
        MatchingWords(image: .imageTwo),
        MatchingWords(image: .imageThree),
        MatchingWords(image: .imageFour)
    ]
}


struct DragAndDrop: View {
    
    @State private var isDropped = false
    @State private var counter = 100 // New variable to keep track of confetti
    @State var dropping : ImagesName
    @State var isDroppedRing = true
    @State var isDroppedCup = true
    @State var isDroppedBuilding = true
    @State var isDroppedLaptop = true
    
    var gameManager = GameManager()
    


    var body: some View {
        ScrollView {
            
            VStack {
                let columns = [
                    GridItem(.fixed((UIScreen.main.bounds.width / 2) - 20)),
                    GridItem(.fixed((UIScreen.main.bounds.width / 2) - 20))
                ]
                
                LazyVGrid(columns: columns) {
                    ForEach(ImagesName.allCases, id: \.self) { allImage in
                        DraggableView(imageName: allImage, gameManager: gameManager)
                    }
                    .background(Color.ourGreen)
                    .cornerRadius(15)
                }
                .padding()
                
                Text("Hold & Drag Words Into Its Image Box:")
                    .font(Font.custom("Merriweather-BoldItalic", size: 15)).foregroundColor(.ourBlue)
                    .padding()
                    .font(.headline)
                    .bold()
                
                LazyVGrid(columns: columns, spacing: 50) {
                    
                    ForEach(gameManager.gameOptions) { text in
                        Text(text.image.matching)
                            .font(Font.custom("AkayaTelivigala-Regular", size:30))
                            .padding()
                            .background(.ourGreen)
                            .cornerRadius(15)
                            .padding(1)
                            .foregroundColor(.ourBegie)
                        
                            .draggable(text.image.matching )
                            .opacity(text.image.droppedValue ? 1 : 0)
                        
                        
                    }
                    //                    }
                    //.padding(3)
                }.padding(12)
            }
         
            .confettiCannon(counter: $counter)
        }
        
    }
    
    private func dragAndDrop() -> Color {
        switch dropping {
        case .imageOne:
            return isDroppedRing ? .ourGreen : .ourBegie
        case .imageTwo:
            return isDroppedLaptop ? .ourGreen : .ourBegie
        case .imageThree:
            return isDroppedCup ? .ourGreen : .ourBegie
        case .imageFour:
            return isDroppedBuilding ? .ourGreen : .ourBegie
        }
    }
}
    
            

#Preview {
    DragAndDrop(dropping: .allCases.randomElement() ?? .imageOne)
}
