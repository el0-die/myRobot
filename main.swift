//
//  main.swift
//  MyRobots
//
//  Created by Elodie Desmoulin on 23/12/2019.
//  Copyright © 2019 Elodie Desmoulin. All rights reserved.
//

import Foundation


struct My4thRobots {
    var id : [String] = []
    var hp: Int = 100
    var speed = 3
    var xCoord = 0
    var yCoord = 0
    
    init(id:[String]) {
        self.id = id
    }
    
    func introduce() {
        let id = ["Jean-Auguste","Charles-Henry","Marc-Antoine","Louis-Eustache"]
        for ids in id{
        print("Je suis le robot \(ids). J'ai \(self.hp) points de vie et je me déplace de \(self.speed). Actuellement, je suis à la case de coordonnées (\(self.xCoord);\(self.yCoord)).")
        }
    }
    
}



let my4thRobots = My4thRobots(id: [])
my4thRobots.introduce()



