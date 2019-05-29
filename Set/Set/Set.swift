//
//  Set.swift
//  Set
//
//  Created by Lexuan Zhou on 2019-05-27.
//  Copyright © 2019 Lexuan Zhou. All rights reserved.
//

import Foundation

class Set{
    
    var pickedCard = [Card]()
    var matchedCard = [Card]()
    var cardDeck = [Card]()
    
    init(){
        createNewDeck()
    }
    
    private func createNewDeck(){
        Card.Symbol.allCases.forEach{
            let symbol = $0
            Card.Number.allCases.forEach{
                let number = $0
                Card.Shading.allCases.forEach{
                    let shading = $0
                    Card.Color.allCases.forEach{
                        let color = $0
                        cardDeck.append(Card(symbol: symbol, number: number, shading: shading, color: color))
                    }
                }
            }
        }
    }
    
    func drawCard() -> Card?{
        
        return nil
    }
    
    func chooseCard(at index: Int){
        
    }
    
    func checkSet() -> Bool
    {
        if pickedCard.count == 3{
            if(checkSymbol() && checkNumber() && checkShading() && checkColor()){
                return true
            }
        }
        return false
    }
    
    private func checkSymbol() -> Bool
    {
        if (pickedCard[0].symbol == pickedCard[1].symbol && pickedCard[0].symbol == pickedCard[2].symbol) || (pickedCard[0].symbol != pickedCard[1].symbol && pickedCard[0].symbol != pickedCard[2].symbol)
        {
            return true
        }
        return false
    }
    
    private func checkNumber() -> Bool
    {
        if (pickedCard[0].number == pickedCard[1].number && pickedCard[0].number == pickedCard[2].number) || (pickedCard[0].number != pickedCard[1].number && pickedCard[0].number != pickedCard[2].number)
        {
            return true
        }
        return false
    }
    
    private func checkShading() -> Bool
    {
        if (pickedCard[0].shading == pickedCard[1].shading && pickedCard[0].shading == pickedCard[2].shading) || (pickedCard[0].shading != pickedCard[1].shading && pickedCard[0].shading != pickedCard[2].shading)
        {
            return true
        }
        return false
    }
    
    private func checkColor() -> Bool
    {
        if (pickedCard[0].color == pickedCard[1].color && pickedCard[0].color == pickedCard[2].color) || (pickedCard[0].color != pickedCard[1].color && pickedCard[0].color != pickedCard[2].color)
        {
            return true
        }
        return false
    }
}

// copy from the lecture video
extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(abs(self))))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}
