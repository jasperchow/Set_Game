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
    
    enum Symbol : String
    {
        case circle = "●"
        case square = "■"
        case triangle = "▲"
    }
    
    enum Number
    {
        case one
        case two
        case three
    }
    
    enum Shading
    {
        case striped
        case solid
        case open
    }
    
    enum Color
    {
        case red
        case yellow
        case blue
    }
}
