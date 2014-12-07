//
//  GameScene.swift
//  CookieCrunch
//
//  Created by Inanc Yuce on 22/07/14.
//  Copyright (c) 2014 YUCE. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        let background = SKSpriteNode(imageNamed: "Background")
        addChild(background)
    }
}