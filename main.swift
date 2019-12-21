//
//  main.swift
//  MyRobots
//
//  Created by Elodie Desmoulin on 21/12/2019.
//  Copyright © 2019 Elodie Desmoulin. All rights reserved.
//

import Foundation



struct MyRobot {
    var id : [String] = []
    var hp : Int = 100
    var speed : Int = 3
    var position : (Int,Int) = (0,0)
    
    }
var myRobot = MyRobot(id: ["Albert", "Henry", "Jean-Eude", "Charles-Antoine"])

    let id = ["Albert", "Henry", "Jean-Eude", "Charles-Antoine"]
    for ids in id {
        print("Bonjour, je m'appelle \(ids). J'ai \(myRobot.hp)PV et je me déplace de \(myRobot.speed) cases par tour. Je suis actuellement à la case qui a pour coordonnées \(myRobot.position).")
    }







