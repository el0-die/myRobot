//
//  Robot.swift
//  MyRobots
//
//  Created by Elodie Desmoulin on 25/12/2019.
//  Copyright © 2019 Elodie Desmoulin. All rights reserved.
//

import Foundation

class Robot {
    let id : String
    var hp : Int = 100
    var speed : Int = 3
    var position : (x : Int, y : Int) = (0,0)
    
    init(id : String) {
        self.id = id
    }
    
    
    func introdiuce() {
            print("Je suis le robot prénommé \(id). J'ai \(hp)pv, je peux me déplacer de maximum \(speed) cases par tour. Actuellement je me trouve à la case de coordonnées ( \(position.x) ; \(position.y) ).")
    }
    
    func move() {
        print("Où \(id) souhaite-t-il aller?")
        let direction = readLine()
        print("De combien de case \(id) souhaite-t-il avancer?")
        let movement = readLine()
        let moveInt = Int(movement!)
        
        if (moveInt! > 0 && moveInt! < speed + 1){
            switch direction {
                case "Gauche":
                    position.x = position.x - moveInt!
                    position.y = position.y + 0
                    print("New position \(position)")
                case "Droite":
                    position.x = position.x + moveInt!
                    position.y = position.y + 0
                    print("New position \(position)")
                case "Haut":
                    position.x = position.x + 0
                    position.y = position.y + moveInt!
                    print("New position \(position)")
                case "Bas":
                    position.x = position.x + 0
                    position.y = position.y - moveInt!
                    print("New position \(position)")
        
                default:
                    print("Commande inconnue")
            }
        }
        
    }
    
    
}




