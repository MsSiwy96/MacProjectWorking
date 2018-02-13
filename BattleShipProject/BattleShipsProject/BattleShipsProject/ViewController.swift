//
//  ViewController.swift
//  BattleShipsProject
//
//  Created by user135621 on 2/13/18.
//  Copyright © 2018 Lucas_Kielak. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func ExitAction(_ sender: NSButton) {
        exit(0);
    }
}

