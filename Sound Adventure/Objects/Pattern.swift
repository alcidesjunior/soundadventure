//
//  Pattern.swift
//  Sound Adventure
//
//  Created by Alcides Junior on 22/02/19.
//  Copyright © 2019 Alcides Junior. All rights reserved.
//

import SpriteKit
class Pattern{
    
    static func hihatKik(name1: String, name2: String, x:CGFloat, y: CGFloat, color: UIColor ,magicNumber: CGFloat, zrotation: CGFloat,width: CGFloat, heigth: CGFloat)->[SKShapeNode]{
        let kik = Instrument(instrumentName: name1, color: color, x: x, y: y, magicNumberX: magicNumber, zrotation: zrotation, width: width, height: heigth)
        
        let hihat1 = Instrument(instrumentName: name2, color: color, x: x, y: y, magicNumberX: magicNumber, zrotation: zrotation, width: width, height: heigth)
        
        return [hihat1.create(), kik.create()]
    }
    static func hihatSnare(name1: String, name2: String, x:CGFloat, y: CGFloat, color: UIColor ,magicNumber: CGFloat, zrotation: CGFloat,width: CGFloat, heigth: CGFloat)->[SKShapeNode]{
        let snare = Instrument(instrumentName: name1, color: color, x: x, y: y, magicNumberX: magicNumber, zrotation: zrotation, width: width, height: heigth)
        
        let hihat1 = Instrument(instrumentName: name2, color: color, x: x, y: y, magicNumberX: magicNumber, zrotation: zrotation, width: width, height: heigth)
        
        return [hihat1.create(), snare.create()]
    }
}
