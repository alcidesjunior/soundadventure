//
//  Component.swift
//  Sound Adventure
//
//  Created by Alcides Junior on 21/02/19.
//  Copyright © 2019 Alcides Junior. All rights reserved.
//

import SpriteKit
class Instrument{
    
    private var x: CGFloat?
    private var y: CGFloat?
    private var zrotation: CGFloat?
    private var width: CGFloat?
    private var height: CGFloat?
    private var instrumentName: String?
    private var color: UIColor?
    private var magicNumberX: CGFloat?
    
    init(instrumentName: String, color: UIColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), x:CGFloat,  y: CGFloat,  magicNumberX: CGFloat, zrotation:CGFloat = 0, width: CGFloat = 70, height: CGFloat = 20){
       
        self.instrumentName = instrumentName
        self.x = x
        self.y = y
        self.zrotation = zrotation
        self.magicNumberX = magicNumberX
        self.width = width
        self.height = height
        self.color = color
    }
    func create()->SKShapeNode{
        let element = SKShapeNode(rectOf: CGSize(width: self.width!, height: self.height!))
        element.position = CGPoint(x: self.x! - self.magicNumberX! ,y: (self.y!  ))
        element.fillColor = self.color!
        element.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: self.width!, height: self.height!))
        element.physicsBody?.isDynamic = false
        //setting configs to collision
        element.physicsBody?.categoryBitMask = 1
        element.physicsBody?.collisionBitMask = 2
        element.physicsBody?.fieldBitMask = 0
        element.physicsBody?.contactTestBitMask = 2
        element.zRotation = self.zrotation!
        element.name = self.instrumentName!
//        element.
        
        return element
    }
    
    
}
