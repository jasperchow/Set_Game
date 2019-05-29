//
//  Card.swift
//  Set
//
//  Created by Lexuan Zhou on 2019-05-27.
//  Copyright © 2019 Lexuan Zhou. All rights reserved.
//

import Foundation

struct Card : Equatable
{
    var symbol : Symbol
    var number : Number
    var shading : Shading
    var color : Color
    
    static func == (lhs: Card, rhs: Card) -> Bool
    {
        return lhs.color == rhs.color && lhs.number == rhs.number && lhs.shading == rhs.shading && lhs.symbol == rhs.symbol
    }
    
    enum Symbol : String, CaseIterable
    {
        case circle = "●"
        case square = "■"
        case triangle = "▲"

    }
    
    enum Number : Int, CaseIterable
    {
        case one = 1
        case two = 2
        case three = 3
    }
    
    enum Shading: CaseIterable
    {
        case striped
        case solid
        case open
    }
    
    enum Color: CaseIterable
    {
        case red
        case yellow
        case blue
    }
}
