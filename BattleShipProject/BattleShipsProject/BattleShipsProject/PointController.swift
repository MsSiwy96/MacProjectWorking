
import Foundation

struct point {
    
    var pointType: Hitbox
    
    var X: Int?
    var Y: Int?
    
    init() {
        self.X = nil;
        self.Y = nil;
        pointType = .Water;
        
    }
    
    init(x: Int, y: Int, type: Hitbox) {
        self.X = x;
        self.Y = y;
        pointType = type;
        
    }
    
}

