
import Foundation

class Player {
    
    var id: Int;
    var name: String;
    
    var fighters = Array<Ship>();
    var hunters = Array<Ship>();
    var cruisers = Array<Ship>();
    var battleships = Array<Ship>();
    
    var ammo_Battery: Int;
    
    init(_id: Int, _name: String) {
        id = _id;
        name = _name;
        self.ammo_Battery = 100;
    }
    
    func getNumberOfShips() -> Int {
        return fighters.count + hunters.count + cruisers.count + battleships.count;
    }
    
    func getAmmoLeft() -> Int {
        return ammo_Battery
    }
}
