//
//  LiberalityViewController.swift
//  Liberality
//
//  Created by Waggle Glow on 04/11/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import UIKit

class LiberalityViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tipLabel: UILabel!
    
    var liberality = Liberality()
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    
    @IBAction func controlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            currencySign = "€"
        } else {
            currencySign = "$"
        }
        updateDisplay()
    }
    
    let taxTip = 0.12
    var currencySign = "€"
    
    func updateDisplay() {
        let billAmount = slider.value
        
        let tipAmount = Double(billAmount) * taxTip
        
        billLabel.text = String(Int(billAmount)) + " " + currencySign
        tipLabel.text = String(Int(tipAmount)) + " " + currencySign
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }
}
