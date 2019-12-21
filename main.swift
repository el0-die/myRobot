//
//  main.swift
//  MyRobot
//
//  Created by Elodie Desmoulin on 21/12/2019.
//  Copyright © 2019 Elodie Desmoulin. All rights reserved.
//

import Foundation



struct MyRobot {
    var name : String
    var hp : Int = 100
    var speed : Int = 3
    var position : (Int,Int) = (0,0)
    
    init(name : String) {
        self.name = name
    }
    
    func introdiuce() {
        print("Bonjour, je m'appelle " + self.name + ". J'ai \(myRobot.hp)PV et je me déplace de \(myRobot.speed) cases par tour. Je suis actuellement à la case qui a pour coordonnées \(myRobot.position).")
    }
}


var myRobot = MyRobot(name: "Albert")


var myFriendsRobot = myRobot
myFriendsRobot.name = "Gilbert"

myRobot.introdiuce()
myFriendsRobot.introdiuce()
