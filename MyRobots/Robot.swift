//
//  Robot.swift
//  MyRobots
//
//  Created by Elodie Desmoulin on 25/12/2019.
//  Copyright © 2019 Elodie Desmoulin. All rights reserved.
//

import Foundation


class Robot {
    var id : String
    var hp : Int
    var speed : Int
    var position : (x : Int, y : Int)
    
    init(id : String , hp : Int , speed : Int , position : (Int , Int)) {
        self.id = id
        self.hp = hp
        self.speed = speed
        self.position = position
    }
    
//Presentation of the Teammates
    
    func introdiuce() {
            print("Je suis le robot prénommé \(id). J'ai \(hp)pv, je peux me déplacer de maximum \(speed) cases par tour. Actuellement je me trouve à la case de coordonnées ( \(position.x) ; \(position.y) ).")
    }
 
// Controlled Movement
    
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
    
// Uncontrolled Movement
    
    func seDeplacerAleatoirement(nbTour : Int) {
        var  nbDeTour : Int = 1
        
        while nbDeTour <= nbTour {
            nbDeTour += 1
            let randomNb = Int.random(in: 1...4)
                if randomNb == 1 {
                    self.position.x = self.position.x - Int.random(in: 1...self.speed)
                    self.position.y = self.position.y + 0
                }else if randomNb == 2{
                    self.position.x = self.position.x + 0
                    self.position.y = self.position.y + Int.random(in: 1...self.speed)
                }else if randomNb == 3{
                    self.position.x = self.position.x + Int.random(in: 1...self.speed)
                    self.position.y = self.position.y + 0
                }else{
                    self.position.x = self.position.x + 0
                    self.position.y = self.position.y - Int.random(in: 1...self.speed)
                }
        }
        print("Moi, \(id)  je me trouve maintenant ici : ( \(self.position.x) ; \(self.position.y) )!")
    }
    
    
}




