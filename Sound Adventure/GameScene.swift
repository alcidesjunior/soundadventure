//
//  GameScene.swift
//  Sound Adventure
//
//  Created by Alcides Junior on 19/02/19.
//  Copyright © 2019 Alcides Junior. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    //setting sounds
    var snareSound = SKAction.playSoundFileNamed("snare.mp3", waitForCompletion: false)
    var kikSound = SKAction.playSoundFileNamed("kik.mp3", waitForCompletion: false)
    var hihatSound = SKAction.playSoundFileNamed("hihat.mp3", waitForCompletion: false)
    
    var fadeOut = SKAction.fadeAlpha(to: 0.2, duration: 0.2)
    var fadeIn = SKAction.fadeAlpha(to: 1, duration: 0.2)
    var objTouched: UITouch?
 
    override func didMove(to view: SKView) {
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        self.physicsBody = border
        
        physicsWorld.contactDelegate = self
        //velocidade do mundo
        physicsWorld.speed = 1.5
        
        let floor = Instrument(instrumentName: "floor", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), x: (self.view?.frame.width)!/2, y: 0, magicNumberX: 0, zrotation: 0, width: view.frame.width, height: 30)
        addChild(floor.create())
        
        //HIHAT AND KIK
        let pattern1 = Pattern.hihatKik(name1: "kikND", name2: "hihatND", x: view.frame.width/2, y: ((view.frame.height)/2) + 90, color: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1), magicNumber: (view.frame.width)/2.36, zrotation: -0.74, width: 70, heigth: Settings.Block.height)
        
        for pattern in pattern1{
            addChild(pattern)
        }
        
        
        //HIHAT
        let hihat2 = Instrument(instrumentName: "hihatND", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), x: (view.frame.width/2) + 70, y: ((view.frame.height)/2) + 15.6, magicNumberX: (view.frame.width)/2.36, zrotation: 0, width: 70, height: Settings.Block.height)
        addChild(hihat2.create())
        
        //HIHAT AND SNARE
        let pattern2 = Pattern.hihatSnare(name1: "hihatND", name2: "snareND", x: view.frame.width/2 + 160, y: ((view.frame.height)/2) + Settings.Block.Position.constantY, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), magicNumber: (view.frame.width)/2.36, zrotation: 0, width: 40, heigth: Settings.Block.height)
        for pattern in pattern2{
            addChild(pattern)
        }
        
        //HIHAT
        let hihat4 = Instrument(instrumentName: "hihatND", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), x: view.frame.width/2 + 210 , y: ((view.frame.height)/2) + Settings.Block.Position.constantY, magicNumberX: (view.frame.width)/2.36, zrotation: 0, width: 30, height: Settings.Block.height)
        addChild(hihat4.create())
        
        //HIHAT AND KIK
        
        
        let pattern3 = Pattern.hihatKik(name1: "hihatND", name2: "kikND", x: view.frame.width/2 + 260, y: ((view.frame.height)/2) + Settings.Block.Position.constantY , color: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1), magicNumber: (view.frame.width)/2.36, zrotation: 0, width: 40, heigth: Settings.Block.height)
        for pattern in pattern3{
            addChild(pattern)
        }

        
        //HIHAT AND KIK
        
        let pattern4 = Pattern.hihatKik(name1: "hihatND", name2: "kikND", x: view.frame.width/2 + 350, y: ((view.frame.height)/2) + Settings.Block.Position.constantY, color: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1), magicNumber: (view.frame.width)/2.36, zrotation: 0, width: 40, heigth: Settings.Block.height)
        for pattern in pattern4{
            addChild(pattern)
        }
        
        //HIHAT AND SNARE
        
        let pattern5 = Pattern.hihatSnare(name1: "hihatND", name2: "snareND", x: view.frame.width/2 + 390, y: ((view.frame.height)/2) + Settings.Block.Position.constantY, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), magicNumber: (view.frame.width)/2.36, zrotation: 0, width: 37, heigth: Settings.Block.height)
        for pattern in pattern5{
            addChild(pattern)
        }
        
        //HIHAT
        let hihat8 = Instrument(instrumentName: "hihatND", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), x: (view.frame.width/2) + 450, y: ((view.frame.height)/2) + Settings.Block.Position.constantY, magicNumberX: (view.frame.width)/2.36, zrotation: 0, width: 40, height: Settings.Block.height)
        addChild(hihat8.create())
        
        
    }

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //ball
        guard let view = view else {
            return
        }
        for touch in touches{
            let touchlocation = touch.location(in: self)
            objTouched = touch as? UITouch
            let node = nodes(at: touchlocation)
            if node.first?.name == nil {
                
                let ball = Ball(ballName: "ball", color: #colorLiteral(red: 0.2176339626, green: 0.2455860078, blue: 0.3344992697, alpha: 1), x: touchlocation.x, y: touchlocation.y, magicNumberX: view.frame.width/2.50, zrotation: 0, 70, 20)
                let ballx = ball.create()
                addChild(ballx)
            }
            
        }
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            if objTouched != nil{
                if touch as UITouch == objTouched!{
                    let location = touch.location(in: self)
                    var touchedNode = nodes(at: location)
                   touchedNode.first?.position = location
                }
            }
        }
    }
    
}

extension GameScene: SKPhysicsContactDelegate{
   
    func didBegin(_ contact: SKPhysicsContact) {
        if (contact.bodyA.node?.name == "ball" && contact.bodyB.node?.name == "hihatND") || (contact.bodyA.node?.name == "hihatND" && contact.bodyB.node?.name == "ball"){
            print("hihat")
            //efeito de blink
            contact.bodyA.node?.run(SKAction.repeat(SKAction.sequence([fadeOut, fadeIn]), count: 1))

            run(hihatSound)
        }
        if (contact.bodyA.node?.name == "ball" && contact.bodyB.node?.name == "snareND") || (contact.bodyA.node?.name == "snareND" && contact.bodyB.node?.name == "ball"){
            print("snare")
            //efeito de blink
            contact.bodyA.node?.run(SKAction.repeat(SKAction.sequence([fadeOut, fadeIn]), count: 1))
            run(snareSound)
        }
        if (contact.bodyA.node?.name == "ball" && contact.bodyB.node?.name == "kikND") || (contact.bodyA.node?.name == "kikND" && contact.bodyB.node?.name == "ball"){
            print("kik")
            //efeito de blink
            contact.bodyA.node?.run(SKAction.repeat(SKAction.sequence([fadeOut, fadeIn]), count: 1))
            run(kikSound)
        }
        if (contact.bodyA.node?.name == "ball" && contact.bodyB.node?.name == "floor") || (contact.bodyA.node?.name == "floor" && contact.bodyB.node?.name == "ball"){
            let children = [contact.bodyA.node!, contact.bodyB.node!].filter({$0.name == "ball"})
            removeChildren(in: children)

        }
    }
}
