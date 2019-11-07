//
//  ViewController.swift
//  Project 2
//
//  Created by Gabriela Garcia on 11/4/19.
//  Copyright © 2019 Gabriela Garcia. All rights reserved.
//

import UIKit

class First: UIViewController {

    @IBOutlet weak var SegmentControl: UISegmentedControl!
    @IBOutlet weak var ViewAB: UIView!
    @IBOutlet weak var ViewCD: UIView!
    
    
    @IBOutlet weak var SwitchA: UISwitch!
    @IBOutlet weak var SwitchB: UISwitch!
    @IBOutlet weak var SwitchC: UISwitch!
    @IBOutlet weak var SwitchD: UISwitch!
    
    
    
    @IBOutlet weak var ContinueButton: UIButton!
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
        ViewAB.isHidden = false
        ViewCD.isHidden = true
    }
        
    @IBAction func indexChanged(_ sender: Any) {
            ViewAB.isHidden.toggle()
            ViewCD.isHidden.toggle()
    }
    
    @IBAction func hasBeenSwitched(_ sender: Any){
        checkIfOn()
    }
    
    func checkIfOn() {
        ContinueButton.isEnabled = allOn()
    }
    
    func allOn() -> Bool {
        return SwitchA.isOn && SwitchB.isOn && SwitchC.isOn && SwitchD.isOn
    }

}

