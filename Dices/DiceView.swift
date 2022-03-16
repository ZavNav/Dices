//
//  DiceView.swift
//  Dices
//
//  Created by Аркадий Рожков on 16.03.2022.
//

import SwiftUI


struct DiceView: View {
    let number: Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(number: 1)
    }
}
