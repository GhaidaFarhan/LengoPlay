//
//  DraggableView.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/7/24.
//

import SwiftUI

struct DraggableView: View {
    @State private var counter = 100
    @State private var isDropped = false
    @State private var textLabel = "\t\t\t"
    @State private var showAlert = false
    @State private var  draggedItem: [String] = []
    var imageName: ImagesName
    @State private var isOpacity = false
    
    var gameManager:GameManager
    
    var body: some View {
        VStack {
            Image(imageName.rawValue)
                .resizable()
                .frame(width:60, height: 80)
                .padding(30)
            
            HStack {
               
                    Text(textLabel)
                        .padding(12)
                        .background(isDropped ? .ourGreen : .ourBegie)
                        .foregroundColor(.ourBegie)
                        .cornerRadius(8)
                        .shadow(radius: 1.0)
                        .dropDestination(for: String.self) {
                            // TODO: Check IF the string dropped is the same value as the image name, then activate confetti. ELSE what happens to indicate that it was incorrect?
                            
                            items, location in
                            
                                if let droppedString = items.first {
                                    draggedItem.append(droppedString)
                                    if let iName = ImagesName(rawValue: droppedString) {
                                        if iName.matching == imageName.matching {
                                            textLabel = iName.matching
                                            isDropped = true
                                            counter += 1 // Increment confetti counter
                                            // TODO: make the button disappear when it's dragged
                                            gameManager.gameOptions.removeAll(where: { $0.image == imageName  })
                                          
                                          
                                        } else {
                                            if isDropped == false{
                                                
                                                // Handle incorrect drop..
                                                //
                                                
                                                showAlert = true
                                                //
                                                
                                            }
                                        }
                                    }
                                
                            }
                                return true
                            
                }
            }
            .padding()
            .alert("Oops, wrong answer ..", isPresented: $showAlert){
            } message: {
                Text("It's all about finding the right answer,keep trying!")
                    .bold()
            }
           
                    
                }.padding(1)
                    .confettiCannon(counter: $counter,num: 50)
        
          
    
                           
            }
        
}
#Preview {
    DraggableView(imageName: .imageTwo, gameManager: GameManager())
}
