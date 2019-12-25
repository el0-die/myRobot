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
    
}



