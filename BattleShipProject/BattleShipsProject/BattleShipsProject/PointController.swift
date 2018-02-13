//
//  PointController.swift
//  BattleShipsProject
//
//  Created by user135621 on 2/13/18.
//  Copyright © 2018 Lucas_Kielak. All rights reserved.
//

import Foundation

struct point {
    
    var pointType: Hitbox
    
    var X: Int?
    var Y: Int?
    
    init() {
        self.X = nil;
        self.Y = nil;
        pointType = .Space;
        
    }
    
    init(x: Int, y: Int, type: Hitbox) {
        self.X = x;
        self.Y = y;
        pointType = type;
        
    }
    
}

