//
//  ContentView.swift
//  Dicee-Swift UI
//
//  Created by Dayton on 08/07/20.
//  Copyright © 2020 Dayton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                //spacer is going to create flexible amount of space depending on how much space there is on screen.
                //It will shrink automatically without creating an autolayout rule.
                Spacer()
                HStack{
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }
                //gives padding on the HStack
                .padding(.horizontal)

                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        //gives padding on the text inside the button
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            
        }
    }
}
struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)").resizable().aspectRatio(1, contentMode: .fit)
            //gives padding on the images
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


