//
//  NastyRobot.swift
//  MyRobots
//
//  Created by Elodie Desmoulin on 26/12/2019.
//  Copyright © 2019 Elodie Desmoulin. All rights reserved.
//

import Foundation

class NastyRobot : Robot{
    var ap : Int
    var aoe : Bool
      
    init(id: String, hp: Int, speed: Int, position: (Int, Int), ap : Int, aoe : Bool) {
        self.ap = ap
        self.aoe = aoe
        super.init(id: id, hp: hp, speed: speed, position: position)
      }
    
//Presentation of the Teammates
    
    override func introdiuce() {
        print("Je suis un robot ennemi et je m'appelle \(id). J'ai \(hp)pv, je peux me déplacer de maximum \(speed) cases par tour. Actuellement je me trouve à la case de coordonnées ( \(position.x) ; \(position.y) ). Si j'attaque je fais \(ap) de dégat.")
    }
    
    func damage(targetName : String) {
        
        if aoe == true {
            switch targetName {
            case "Io":
                let target = io
                print("\(id) lance un projectile explosif sur \(target.id). \(target.id) perd donc \(ap) de pv. Il ne lui reste plus que \(target.hp - ap). ")
            case "Europe":
                let target = europe
                print("\(id) lance un projectile explosif sur \(target.id). \(target.id) perd donc \(ap) de pv. Il ne lui reste plus que \(target.hp - ap). ")
            case "Ganymède":
                let target = ganymede
                print("\(id) lance un projectile explosif sur \(target.id). \(target.id) perd donc \(ap) de pv. Il ne lui reste plus que \(target.hp - ap). ")
            case "Callisto":
                let target = callisto
                print("\(id) lance un projectile explosif sur \(target.id). \(target.id) perd donc \(ap) de pv. Il ne lui reste plus que \(target.hp - ap). ")
            default:
                print("Rien ne se passe...")
                    
            }
                
        }
    }
    
  }
