//
//  ContentView.swift
//  CalculatorApp
//
//  Created by Dinesh Danda on 6/8/20.
//  Copyright © 2020 Dinesh Danda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let calButtons = [
        ["AC", "+_","%","%"],
        ["7", "8","9","X"],
        ["4", "5","5","-"],
        ["1", "2","3","+"],
        ["0", ".",".","="]
    ]
    var body: some View {
        
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 12){
                HStack {
                    Spacer()
                    Text("22").foregroundColor(.white)
                        .font(.system(size: 66))
                } .padding()
                
                ForEach(calButtons, id: \.self) { row in
                    HStack (spacing: 12) {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 32))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .background(Color.gray)
                                .cornerRadius(self.buttonWidth())
                        }
                    }
                }
            } .padding(.bottom)
        }
    }
    
    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
