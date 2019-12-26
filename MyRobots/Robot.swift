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
                    print("\(id) se trouve maintenant aux coordonnées ( \(position.x) ; \(position.y) ).")
                case "Droite":
                    position.x = position.x + moveInt!
                    position.y = position.y + 0
                    print("\(id) se trouve maintenant aux coordonnées ( \(position.x) ; \(position.y) ).")
                case "Haut":
                    position.x = position.x + 0
                    position.y = position.y + moveInt!
                    print("\(id) se trouve maintenant aux coordonnées ( \(position.x) ; \(position.y) ).")
                case "Bas":
                    position.x = position.x + 0
                    position.y = position.y - moveInt!
                    print("\(id) se trouve maintenant aux coordonnées ( \(position.x) ; \(position.y) ).")
        
                default:
                    print("Commande inconnue")
            }
        }
        
    }
    
   
    func seDeplacerAleatoirement(nbTour : Int) {
        var  nbDeTour : Int = 1
        
        while nbDeTour <= nbTour {
            nbDeTour += 1
            let randomNb = Int.random(in: 1...4)
                if randomNb == 1 {
                    position.x = position.x - Int.random(in: 0...speed)
                    position.y = position.y + 0
                }else if randomNb == 2{
                    position.x = position.x + 0
                    position.y = position.y + Int.random(in: 0...speed)
                }else if randomNb == 3{
                    position.x = position.x + Int.random(in: 0...speed)
                    position.y = position.y + 0
                }else{
                    position.x = position.x + 0
                    position.y = position.y - Int.random(in: 0...speed)
                }
        }
            print("Je suis \(id) et maintenant je me trouve ici : ( \(position.x) ; \(position.y) ).")
    }
    
    
}




