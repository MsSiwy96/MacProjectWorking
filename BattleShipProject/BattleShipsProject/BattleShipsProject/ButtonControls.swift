
import Foundation
import Cocoa

class TechUnits {
    
    //enable or disable selected battlefield
    static func buttonsEnableDisable(Buttons: [NSButton], switchTo: Bool) -> Void {
        if(switchTo == false){
            for item in 0...Buttons.count - 1 {
                Buttons[item].isEnabled = false;
            }
        }
        if (switchTo){
            for item in 0...Buttons.count - 1 {
                Buttons[item].isEnabled = true;
            }
        }
    }
    
    //types for generate buttons id dialogs
    enum Buttons{
        case OK
        case YesNo
    }
    
    //set buttons proporties
    static func setButtonProporties(button: NSButton, _title: String, _butHue: CGFloat, _butSaturation: CGFloat, _butBrightness: CGFloat, _butAlpha: CGFloat, _bgC_red: CGFloat, _bgC_green: CGFloat, _bgC_blue: CGFloat, _bgC_alpha: CGFloat, _fontSize: CGFloat)
    {
        let pstyle = NSMutableParagraphStyle();
        pstyle.alignment = .center;
        button.attributedTitle = NSMutableAttributedString(string: _title, attributes: [NSAttributedStringKey.foregroundColor: NSColor(calibratedHue: _butHue, saturation: _butSaturation, brightness: _butBrightness, alpha: _butAlpha), NSAttributedStringKey.font: NSFont.systemFont(ofSize: _fontSize), NSAttributedStringKey.paragraphStyle: pstyle])
        (button.cell as! NSButtonCell).backgroundColor = NSColor.clear;
        (button.cell as! NSButtonCell).backgroundColor = NSColor.init(red: _bgC_red, green: _bgC_green, blue: _bgC_blue, alpha: _bgC_alpha);
    }
    
    // generate dialog box
    static func dialogOKCancel(question: String, text: String, buttons: Buttons) -> Bool {
        let alert = NSAlert()
        alert.messageText = question
        alert.informativeText = text
        alert.alertStyle = .informational
        
        switch buttons {
        case .OK:
            alert.addButton(withTitle: "OK")
        case .YesNo:
            alert.addButton(withTitle: "Yes")
            alert.addButton(withTitle: "No")
        }
        
        return alert.runModal() == .alertFirstButtonReturn
    }
    
    static func random(a: Int) -> Int {
        return Int(arc4random_uniform(_: UInt32(a)))
    }
    
    //this function helps to change button appearence on battlefield when placing ships, it may be outdated
    static func setPositionOfShips(ArrayWithButton: [NSButton], tag: Int, kindOfShip: String) -> Void {
        ArrayWithButton[tag].title = kindOfShip;
    }
}

