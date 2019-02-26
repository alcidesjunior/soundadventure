//
//  Ball.swift
//  Sound Adventure
//
//  Created by Alcides Junior on 21/02/19.
//  Copyright © 2019 Alcides Junior. All rights reserved.
//

import SpriteKit
class Ball{
    
    private var x: CGFloat?
    private var y: CGFloat?
    private var zrotation: CGFloat?
    private var width: CGFloat?
    private var height: CGFloat?
    private var ballName: String?
    private var color: UIColor?
    private var magicNumberX: CGFloat?
    
    init(ballName: String, color: UIColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), x:CGFloat,  y: CGFloat, magicNumberX: CGFloat,  zrotation:CGFloat = 0, _ width: CGFloat = 70,_ height: CGFloat = 20){
        
        self.ballName = ballName
        self.x = x
        self.y = y
        self.magicNumberX = magicNumberX
        self.zrotation = zrotation
        self.width = width
        self.height = height
        self.color = color
    }
    func create()->SKShapeNode{
        let element = SKShapeNode(circleOfRadius: 10)
        element.position = CGPoint(x: self.x! - self.magicNumberX! ,y: (self.y! + 100  ))
        element.fillColor = self.color!
        element.physicsBody = SKPhysicsBody(circleOfRadius: 10)
        //setting configs to collision
        element.physicsBody?.restitution = 1
        element.physicsBody?.categoryBitMask = 2
        element.physicsBody?.collisionBitMask = 1
        element.physicsBody?.fieldBitMask = 0
        element.physicsBody?.contactTestBitMask = 1
        element.zRotation = self.zrotation!
        element.name = self.ballName!
//        element.physicsBody?.velocity
        return element
    }
}
