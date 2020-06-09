//
//  ContentView.swift
//  CalculatorApp
//
//  Created by Dinesh Danda on 6/8/20.
//  Copyright © 2020 Dinesh Danda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    enum CalculatorButtons: String {
        
        case zero, one, two, three, four, five, six, seven, eight, nine, dot
        case ac, plusMinus, percent
        case equals, minus, plus, multiply, divide
        
        var title: String {
            switch self {
            case .one: return "1"
            case .two: return "2"
            case .three: return "3"
            case .four: return "4"
            case .five: return "5"
            case .six: return "6"
            case .seven: return "7"
            case .eight: return "8"
            case .nine: return "9"
            case .plus: return "+"
            case .minus: return "-"
            case .multiply: return "X"
            case .divide: return "÷"
            case .percent: return "%"
            case .equals: return "="
            case .zero: return "0"
            case .plusMinus: return "+/-"
            case .dot: return "."
            default:
                return "AC"
            }
        }
        
        var buttonBackgroundColor: Color {
            switch self {
            case .divide, .minus, .plus, .equals, .multiply:
                return Color(.orange)
            case .ac, .percent, .plusMinus:
                return Color(.lightGray)
            default:
                return Color(.darkGray)
            }
        }
    }
    
    let calButtons: [[CalculatorButtons]] = [
        [.ac, .plusMinus, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .plus],
        [.one, .two, .three, .minus],
        [.zero, .dot, .equals]
        
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
                            
                            Button(action: {
                                
                            }) {
                                Text(button.title)
                                .font(.system(size: 32))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: self.buttonWidth(button: button), height: (UIScreen.main.bounds.width - 5 * 12) / 4)
                                .background(button.buttonBackgroundColor)
                                .cornerRadius(self.buttonWidth(button: button))
                            }
                        }
                    }
                }
            } .padding(.bottom)
        }
    }
    
    func buttonWidth(button: CalculatorButtons) -> CGFloat {
        if button == .zero {
            return (UIScreen.main.bounds.width - 4 * 12) / 4 * 2
        }
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
