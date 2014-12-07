//
//  Cookie.swift
//  CookieCrunch
//
//  Created by Inanc Yuce on 22/07/14.
//  Copyright (c) 2014 YUCE. All rights reserved.
//

import SpriteKit

enum CookieType: Int, Printable {
    case Unknown = 0, Croissant, Cupcake, Danish, Donut, Macaroon, SugarCookie
    
    var spriteName: String {
    let spriteNames = [
        "Croissant",
        "Cupcake",
        "Danish",
        "Donut",
        "Macaroon",
        "SugarCookie"]
        
        return spriteNames[toRaw() - 1]
    }
    
    var highlightedSpriteName: String {
    let highlightedSpriteNames = [
        "Croissant-Highlighted",
        "Cupcake-Highlighted",
        "Danish-Highlighted",
        "Donut-Highlighted",
        "Macaroon-Highlighted",
        "SugarCookie-Highlighted"]
        
        return highlightedSpriteNames[toRaw() - 1]
    }
    
    static func random() -> CookieType {
        return CookieType.fromRaw(Int(arc4random_uniform(6)) + 1)!
    }
    
    var description: String {
    return spriteName
    }
}

class Cookie: Printable {
    var column: Int
    var row: Int
    let cookieType: CookieType
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, cookieType: CookieType) {
        self.column = column
        self.row = row
        self.cookieType = cookieType
    }
    var dedcription: String {
    return "type:\(cookieType) square:(\(column),\(row))"
    }
}
