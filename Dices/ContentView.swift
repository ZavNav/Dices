//
//  ContentView.swift
//  Dices
//
//  Created by Аркадий Рожков on 16.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNum: Int = 1
    @State var rightDiceNum: Int = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftDiceNum)
                    DiceView(number: rightDiceNum)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNum = Int.random(in: 1...6)
                    self.rightDiceNum = Int.random(in: 1...6)
                },label: {
                     Text("Roll")
                    .font(.system(size: 50))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                })
                .background(Color.red)
                .padding(.bottom)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

