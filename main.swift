//
//  main.swift
//  MyRobots
//
//  Created by Elodie Desmoulin on 25/12/2019.
//  Copyright © 2019 Elodie Desmoulin. All rights reserved.
//

import Foundation


let io = Robot(id: "Io")
let europe = Robot(id: "Europe")
let gany = Robot(id: "Ganymède")
let calli = Robot(id: "Callisto")

let my4Robots = [io,europe, gany, calli]
    my4Robots.forEach { Robot in
        return Robot.introdiuce()
}

    my4Robots.forEach { Robot in
        return Robot.move()
}
