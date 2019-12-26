//
//  main.swift
//  MyRobots
//
//  Created by Elodie Desmoulin on 25/12/2019.
//  Copyright © 2019 Elodie Desmoulin. All rights reserved.
//

import Foundation

// The Nice Guys

let io = Robot(id: "Io", hp: 100, speed: 5, position: ( 30 , -16 ))
let europe = Robot(id: "Europe", hp: 120, speed: 7, position: ( -20 , 50 ))
let ganymede = Robot(id: "Ganymède", hp: 90, speed: 4, position: ( 67 , 2 ))
let callisto = Robot(id: "Callisto", hp: 110, speed: 6, position: ( -5 , -80 ))

let my4Robots = [io, europe, ganymede, callisto]

/*   my4Robots.forEach { Robot in
        return Robot.introdiuce()
}

    my4Robots.forEach { Robot in
        return Robot.move()
}

     my4Robots.forEach { Robot in
        return Robot.seDeplacerAleatoirement(nbTour: 20)
    }
*/
// The Bad Guys

let titan = NastyRobot(id: "Titan", hp: 110, speed: 5, position: ( 29 , -16 ), ap: 20, aoe: true)
let hyperion = NastyRobot(id: "Hypérion", hp: 90, speed: 7, position: (22, -20), ap: 30, aoe: true)
let thetys = NastyRobot(id: "Thétys", hp: 120, speed: 4, position: (-6, -80), ap: 15, aoe: false)
let mimas = NastyRobot(id: "Mimas", hp: 100, speed: 6, position: (61, 8), ap: 25, aoe: true)

let my4NastyRobots = [titan, hyperion, thetys, mimas]

my4NastyRobots.forEach { NastyRobot in
        return NastyRobot.damage(targetName: "Io")
}






