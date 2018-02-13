//
//  GameState_enum.swift
//  BattleShipsProject
//
//  Created by user135621 on 2/13/18.
//  Copyright © 2018 Lucas_Kielak. All rights reserved.
//

import Foundation

enum GameState {
    case Initializing
    case PlacingShips,PlaceComputerShips
    case PlayerTurn, ComputerTurn
    case EndOfGame
    case GameOver_NoAmmo, GameOver_NoShips
    case Win_NoAmmo, Win_NoShips
}
