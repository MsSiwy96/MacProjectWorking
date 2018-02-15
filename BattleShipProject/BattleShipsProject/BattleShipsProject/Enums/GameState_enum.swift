
import Foundation

enum GameState {
    case Initializing
    case PlacingShips,PlaceComputerShips
    case PlayerTurn, ComputerTurn
    case EndOfGame
    case GameOver_NoAmmo, GameOver_NoShips
    case Win_NoAmmo, Win_NoShips
}
